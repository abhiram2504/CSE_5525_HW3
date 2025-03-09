import os, argparse, random
from tqdm import tqdm
import pickle

import torch
# from transformers import GemmaTokenizerFast, GemmaForCausalLM
from transformers import GemmaTokenizer, AutoModelForCausalLM
from transformers import BitsAndBytesConfig
from transformers import AutoTokenizer


from utils import set_random_seeds, compute_metrics, save_queries_and_records, compute_records
from prompting_utils import read_schema, extract_sql_query, save_logs
from load_data import load_prompting_data

DEVICE = torch.device('cuda') if torch.cuda.is_available() else torch.device('cpu') # you can add mps
MAX_NEW_TOKENS = 1024

def get_args():
    '''
    Arguments for prompting. You may choose to change or extend these as you see fit.
    '''
    parser = argparse.ArgumentParser(
        description='Text-to-SQL experiments with prompting.')

    parser.add_argument('-s', '--shot', type=int, default=0,
                        help='Number of examples for k-shot learning (0 for zero-shot)')
    parser.add_argument('-p', '--ptype', type=int, default=0,
                        help='Prompt type')
    parser.add_argument('-m', '--model', type=str, default='gemma',
                        help='Model to use for prompting: gemma (gemma-1.1-2b-it) or codegemma (codegemma-7b-it)')
    parser.add_argument('-q', '--quantization', action='store_true',
                        help='Use a quantized version of the model (e.g. 4bits)')

    parser.add_argument('--seed', type=int, default=42,
                        help='Random seed to help reproducibility')
    parser.add_argument('--experiment_name', type=str, default='experiment',
                        help="How should we name this experiment?")
    parser.add_argument('--schema', type=str, default='data/flight_database.schema', help='Path to the database schema file')
    args = parser.parse_args()
    return args


def create_prompt(sentence: str,
                  k: int,
                  train_x: list = None,
                  train_y: list = None,
                  schema_str: str = ""):
    """
    Build a prompt for zero-shot or few-shot prompting.

    :param sentence: User's natural language request
    :type sentence: str
    :param k: Number of few-shot examples to include
    :type k: int
    :param train_x: List of training NL examples
    :type train_x: list
    :param train_y: List of training SQL queries
    :type train_y: list
    :param schema_str: String containing database schema
    :type schema_str: str
    :return: The constructed prompt for the model
    :rtype: str
    """
    instruction = f"""
        <instructions>
        You are a helpful assistant that translates user requests into SQL queries for a flight database.
        Here is the schema: {schema_str}
        Please generate ONLY the SQL query, and do not repeat the prompt.
        </instructions>
    """

    if k == 0 or not train_x or not train_y:
        prompt = instruction + f"<user_request>\n{sentence}\n</user_request>\n<response>\n"
        return prompt

    selected_indices = random.sample(range(len(train_x)), k)
    few_shot_examples = []
    for idx in selected_indices:
        ex_nl = train_x[idx].strip()
        ex_sql = train_y[idx].strip()
        few_shot_examples.append(f"<user_request>\n{ex_nl}\n</user_request>\n<response>\n{ex_sql}\n</response>")

    few_shot_examples_str = "\n".join(few_shot_examples)
    prompt = (
        f"{instruction}"
        f"{few_shot_examples_str}"
        f"<user_request>\n{sentence}\n</user_request>\n"
        f"<response>\n"
    )
    return prompt



def exp_kshot(tokenizer, model, inputs, k, train_x, train_y, schema_str):
    '''
    k-shot prompting experiments using the provided model and tokenizer. 
    This function generates SQL queries from text prompts and evaluates their accuracy.

    Add/modify the arguments and code as needed.

    Inputs:
        * tokenizer
        * model
        * inputs (List[str]): A list of text strings
        * k (int): Number of examples in k-shot prompting
    '''
    raw_outputs = []
    extracted_queries = []

    for i, sentence in tqdm(enumerate(inputs)):
        prompt = create_prompt(sentence, k) # Looking at the prompt may also help

        input_ids = tokenizer(prompt, return_tensors="pt").to(DEVICE)
        outputs = model.generate(**input_ids, max_new_tokens=MAX_NEW_TOKENS) # You should set MAX_NEW_TOKENS
        response = tokenizer.decode(outputs[0]) # How does the response look like? You may need to parse it
        raw_outputs.append(response)

        # Extract the SQL query
        extracted_query = extract_sql_query(response)
        extracted_queries.append(extracted_query)
    return raw_outputs, extracted_queries


def eval_outputs(eval_x, eval_y, gt_sql_pth, model_sql_path, gt_record_path, model_record_path):
    '''
    Evaluate the outputs of the model by computing the metrics.

    Add/modify the arguments and code as needed.
    '''
    # Save the model's generated SQL queries
    with open(model_sql_path, 'w') as f:
        for query in eval_y:
            f.write(query + '\n')
    
     # Compute and save the records
    try:
        model_records, model_error_msgs = compute_records(eval_y, model_record_path)
    except Exception as e:
        print(f"Error computing records: {str(e)}")
        return 0.0, 0.0, 0.0, ["Error computing records"], 1.0
    
    # Load ground truth records
    try:
        with open(gt_record_path, 'rb') as f:
            gt_records = pickle.load(f)
    except Exception as e:
        print(f"Error loading ground truth records: {str(e)}")
        return 0.0, 0.0, 0.0, ["Error loading ground truth records"], 1.0
    
    # Compute metrics
    try:
        sql_em, record_em, record_f1 = compute_metrics(gt_sql_pth, model_sql_path, gt_records, model_records)
    except Exception as e:
        print(f"Error computing metrics: {str(e)}")
        return 0.0, 0.0, 0.0, ["Error computing metrics"], 1.0
    
    # Calculate error rate
    error_count = sum(1 for msg in model_error_msgs if msg)
    error_rate = error_count / len(eval_y) if eval_y else 0
    
    return sql_em, record_em, record_f1, model_error_msgs, error_rate

# tokenizer = AutoTokenizer.from_pretrained("google/gemma-1.1-2b-it")
# model = AutoModelForCausalLM.from_pretrained("google/gemma-1.1-2b-it")


def initialize_model_and_tokenizer(model_name, to_quantize=False):
    '''
    Args:
        * model_name (str): Model name ("gemma" or "codegemma").
        * to_quantize (bool): Use a quantized version of the model (e.g. 4bits)
    
    To access to the model on HuggingFace, you need to log in and review the 
    conditions and access the model's content.
    '''
    if model_name == "gemma":
        model_id = "google/gemma-1.1-2b-it"
        tokenizer = AutoTokenizer.from_pretrained(model_id)
        # Native weights exported in bfloat16 precision, but you can use a different precision if needed
        model = AutoModelForCausalLM.from_pretrained(
            model_id,
            device_map="auto",
            torch_dtype=torch.bfloat16, 
        )
        # model = AutoModelForCausalLM.from_pretrained("google/gemma-1.1-2b-it")
    elif model_name == "codegemma":
        model_id = "google/codegemma-7b-it"
        tokenizer = AutoTokenizer.from_pretrained(model_id)
        if to_quantize:
            nf4_config = BitsAndBytesConfig(
                load_in_4bit=True,
                bnb_4bit_quant_type="nf4", # 4-bit quantization
            )
            model = AutoModelForCausalLM.from_pretrained(model_id,
                                                        torch_dtype=torch.bfloat16,
                                                        device_map="auto",
                                                        config=nf4_config).to(DEVICE)
        else:
            model = AutoModelForCausalLM.from_pretrained(model_id,
                                                         device_map="auto",
                                                        torch_dtype=torch.bfloat16).to(DEVICE)
    return tokenizer, model


def main():
    '''
    Note: this code serves as a basic template for the prompting task. You can but 
    are not required to use this pipeline.
    You can design your own pipeline, and you can also modify the code below.
    '''
    args = get_args()
    shot = args.shot
    ptype = args.ptype
    model_name = args.model
    to_quantize = args.quantization
    experiment_name = args.experiment_name

    set_random_seeds(args.seed)

    data_folder = 'data'
    train_x, train_y, dev_x, dev_y, test_x = load_prompting_data(data_folder)

    # Model and tokenizer
    tokenizer, model = initialize_model_and_tokenizer(model_name, to_quantize)

    for eval_split in ["dev", "test"]:
        eval_x, eval_y = (dev_x, dev_y) if eval_split == "dev" else (test_x, None)

        raw_outputs, extracted_queries = exp_kshot(tokenizer, model, eval_x, shot, train_x, train_y, read_schema(args.schema))

        # You can add any post-processing if needed
        # You can compute the records with `compute_records``

        output_prefix = f"{model_name}_{experiment_name}_{eval_split}_k{shot}_p{ptype}"


        gt_query_records = f"records/{eval_split}_gt_records.pkl"
        gt_sql_path = os.path.join(f'data/{eval_split}.sql')
        gt_record_path = os.path.join(f'records/{eval_split}_gt_records.pkl')
        model_sql_path = os.path.join(f'results/gemma_{experiment_name}_dev.sql')
        model_record_path = os.path.join(f'records/gemma_{experiment_name}_dev.pkl')
        
        if eval_split == "test":
            # Just save the generated queries
            with open(model_sql_path, 'w') as f:
                for query in extracted_queries:
                    f.write(query + '\n')
            print(f"Generated SQL queries for test set saved to {model_sql_path}")
            continue
        
        sql_em, record_em, record_f1, model_error_msgs, error_rate = eval_outputs(
            eval_x, eval_y,
            gt_path=gt_sql_path,
            model_path=model_sql_path,
            gt_query_records=gt_query_records,
            model_query_records=model_record_path
        )
        print(f"{eval_split} set results: ")
        print(f"Record F1: {record_f1}, Record EM: {record_em}, SQL EM: {sql_em}")
        print(f"{eval_split} set results: {error_rate*100:.2f}% of the generated outputs led to SQL errors")

        # Save results
        # You can for instance use the `save_queries_and_records` function

        # Save logs, if needed
        log_path = f"logs/{output_prefix}.log"
        os.makedirs('logs', exist_ok=True)
        save_logs(log_path, sql_em, record_em, record_f1, model_error_msgs)


if __name__ == "__main__":
    main()