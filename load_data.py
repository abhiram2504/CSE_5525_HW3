import os, random, re, string
from collections import Counter
from tqdm import tqdm
import pickle

from torch.utils.data import Dataset, DataLoader
from torch.nn.utils.rnn import pad_sequence

import nltk
nltk.download('punkt')
from transformers import T5TokenizerFast
import torch

PAD_IDX = 0

class T5Dataset(Dataset):

    def __init__(self, data_folder, split):
    
        self.tokenizer = T5TokenizerFast.from_pretrained('google-t5/t5-small')
        self.split = split
        self.pad_token_id = self.tokenizer.pad_token_id
        self.data = self.process_data(data_folder, split, self.tokenizer)
        
    def process_data(self, data_folder, split, tokenizer):

      train_x, train_y, dev_x, dev_y, test_x = load_prompting_data(data_folder)
      if split == 'train':
          inputs, targets = train_x, train_y
      elif split == 'dev':
          inputs, targets = dev_x, dev_y
      elif split == 'test':
          inputs, targets = test_x, [None] * len(test_x)
      else:
          raise ValueError(f"Invalid split: {split}")
      
      processed_data = [] 
      for i, (input_text, target_text) in enumerate(zip(inputs, targets)):
          
          input_text = self._normalize_nl_query(input_text)

          # Tokenize input text
          input_ids = tokenizer.encode(
              input_text, 
              max_length=512, 
              truncation=True, 
              return_tensors='pt'
          ).squeeze()
          
          # If not test split, process target text
          if split != 'test' and target_text is not None:

              target_text = self._normalize_sql(target_text)

              # Tokenize target text
              target_ids = tokenizer.encode(
                  target_text, 
                  max_length=512, 
                  truncation=True, 
                  return_tensors='pt'
              ).squeeze()
              
              # For T5, proper way to handle decoder input is to shift the target
              decoder_input_ids = target_ids.clone()
              decoder_input_ids = torch.cat([
                  # Use a specific token to start decoding - extra_id_0 works for T5
                  torch.tensor([tokenizer.pad_token_id]), 
                  target_ids[:-1]  # All but last token for decoder input
              ])
              
              processed_data.append({
                  'input_ids': input_ids,
                  'decoder_input_ids': decoder_input_ids,
                  'decoder_target_ids': target_ids  # Full target sequence
              })
          else:
              # For test split, only store input ids
              processed_data.append({
                  'input_ids': input_ids
              })
    
      return processed_data
    
    def _normalize_nl_query(self, query):
      # Convert to lowercase
      query = query.lower()
      # Replace multiple spaces with single space
      query = re.sub(r'\s+', ' ', query).strip()
      return query

    def _normalize_sql(self, sql):
      """Normalize SQL query to make training more consistent"""
      # Standardize casing for SQL keywords
      for keyword in ["SELECT", "FROM", "WHERE", "GROUP BY", "ORDER BY", "JOIN", "ON", "AND", "OR"]:
          pattern = re.compile(re.escape(keyword), re.IGNORECASE)
          sql = pattern.sub(keyword, sql)
    
      # Normalize whitespace
      sql = re.sub(r'\s+', ' ', sql).strip()
      return sql
        
    def __len__(self):
        # TODO
        return len(self.data)

    def __getitem__(self, idx):
        # TODO
        return self.data[idx]

def normal_collate_fn(batch):
    '''
    Collation function to perform dynamic padding for training and evaluation with the
    development or validation set.

    Inputs:
        * batch (List[Any]): batch is a list of length batch_size, where each index contains what
                             the dataset __getitem__ function returns.

    Returns: To be compatible with the provided training loop, you should be returning
        * encoder_ids: The input ids of shape BxT to be fed into the T5 encoder.
        * encoder_mask: Mask of shape BxT associated with padding tokens in the encoder input
        * decoder_inputs: Decoder input ids of shape BxT' to be fed into T5 decoder.
        * decoder_targets: The target tokens with which to train the decoder (the tokens following each decoder input)
        * initial_decoder_inputs: The very first input token to be decoder (only to be used in evaluation)
    '''
    input_ids = [sample['input_ids'] for sample in batch]
    decoder_input_ids = [sample['decoder_input_ids'] for sample in batch]
    decoder_target_ids = [sample['decoder_target_ids'] for sample in batch]
    
    # Pad sequences
    encoder_input_ids = pad_sequence(input_ids, batch_first=True, padding_value=PAD_IDX)
    encoder_mask = (encoder_input_ids != PAD_IDX).long()
    
    decoder_input_ids = pad_sequence(decoder_input_ids, batch_first=True, padding_value=PAD_IDX)
    decoder_target_ids = pad_sequence(decoder_target_ids, batch_first=True, padding_value=PAD_IDX)
    
    # First decoder input (for evaluation)
    initial_decoder_inputs = decoder_input_ids[:, 0]
    
    return (
        encoder_input_ids, 
        encoder_mask, 
        decoder_input_ids, 
        decoder_target_ids, 
        initial_decoder_inputs
    )

def test_collate_fn(batch):
    '''
    Collation function to perform dynamic padding for inference on the test set.

    Inputs:
        * batch (List[Any]): batch is a list of length batch_size, where each index contains what
                             the dataset __getitem__ function returns.

    Recommended returns: 
        * encoder_ids: The input ids of shape BxT to be fed into the T5 encoder.
        * encoder_mask: Mask of shape BxT associated with padding tokens in the encoder input
        * initial_decoder_inputs: The very first input token to be decoder (only to be used in evaluation)
    '''
    input_ids = [sample['input_ids'] for sample in batch]
    encoder_input_ids = pad_sequence(input_ids, batch_first=True, padding_value=PAD_IDX)
    encoder_mask = (encoder_input_ids != PAD_IDX).long()
    
    # First token as initial decoder input
    initial_decoder_inputs = torch.full(
        (encoder_input_ids.size(0),), 
        fill_value=0,  # Typically 0 or a special token ID 
        dtype=torch.long
    )
    
    return encoder_input_ids, encoder_mask, initial_decoder_inputs

def get_dataloader(batch_size, split):
    data_folder = 'data'
    dset = T5Dataset(data_folder, split)
    shuffle = split == "train"
    collate_fn = normal_collate_fn if split != "test" else test_collate_fn

    dataloader = DataLoader(dset, batch_size=batch_size, shuffle=shuffle, collate_fn=collate_fn)
    return dataloader

def load_t5_data(batch_size, test_batch_size):
    train_loader = get_dataloader(batch_size, "train")
    dev_loader = get_dataloader(test_batch_size, "dev")
    test_loader = get_dataloader(test_batch_size, "test")
    
    return train_loader, dev_loader, test_loader


def load_lines(path):
    with open(path, 'r') as f:
        lines = f.readlines()
        lines = [line.strip() for line in lines]
    return lines

def load_prompting_data(data_folder):
    train_x_path = os.path.join(data_folder, 'train.nl')
    train_y_path = os.path.join(data_folder, 'train.sql')
    dev_x_path = os.path.join(data_folder, 'dev.nl')
    dev_y_path = os.path.join(data_folder, 'dev.sql')
    test_x_path = os.path.join(data_folder, 'test.nl')

    
    # Load data using the existing load_lines function
    train_x = load_lines(train_x_path)
    train_y = load_lines(train_y_path)
    dev_x = load_lines(dev_x_path)
    dev_y = load_lines(dev_y_path)
    test_x = load_lines(test_x_path)

    # print("Example Training Input:", train_x[0])
    # print("Example Training SQL:", train_y[0])
    
    return train_x, train_y, dev_x, dev_y, test_x