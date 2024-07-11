#imports

import numpy as np
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

import scipy
from scipy.stats import normaltest
from scipy.stats import chi2_contingency

#carregamento dos dados
df = pd.read_csv("dados.csv")

print(df.head)

#Valores ausentes ou duplibacos
dup = df["product_id"].duplicated().sum()
aus = df.isna().sum()
print("Valores duplicados: \n")
print(dup)
print("Valores ausentes: \n")
print(aus)

print("Linhas e colunas" + df.shape)
print(df["category"].values_counts())
print(df.info())
print(df.columns)


sns.histplot(data = df, x = "sales_month_1")
plt.show()

sns.barplot(data = df, x  = "price", y = "category", color = "seagreen")
plt.show()

#Teste de normalidade
numericalColumns = ['price', 'review_score']

for i in numericalColumns:
    stats, pval = normaltest(df[i])
    if pval > 0.05:
        print(i, ': Segue uma distribuição normal')
    else:
        print(i, ': Não segue uma distribuição normal')