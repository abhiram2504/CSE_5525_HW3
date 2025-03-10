import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd

# Data
data = {
    'k-values': [0, 1, 3],
    'Record F1 Scores': [11.58, 18.75, 18.86]
}
df = pd.DataFrame(data)

# Set Seaborn style
sns.set_theme(style="whitegrid")

# Create the plot
plt.figure(figsize=(10, 6))
sns.lineplot(x='k-values', y='Record F1 Scores', data=df, marker='o', linewidth=2.5, color='b', markersize=8, markerfacecolor='red')

# Customize ticks
plt.xticks(fontsize=12)
plt.yticks(fontsize=12)

# Labels and title with enhanced font styling
plt.xlabel("k-values", fontsize=14, fontweight='bold')
plt.ylabel("Record F1 Scores", fontsize=14, fontweight='bold')
plt.title("Record F1 Scores vs. k-values", fontsize=16, fontweight='bold')

# Add gridlines for better readability
plt.grid(True)

# Show the plot
plt.tight_layout()
plt.show()
