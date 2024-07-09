#imports

import numpy as np
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

#carregamento dos dados
df = pd.read_csv("dados.csv")

print(df.head)

print("Linhas e colunas" + df.shape)
print(df["category"].values_counts())
print(df.info())
print(df.columns)


sns.histplot(data = df, x = "sales_month_1")
plt.show()

sns.barplot(data = df, x  = "price", y = "category", color = "seagreen")
plt.show()