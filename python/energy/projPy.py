#imports
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

#carregamento/visualização dos dados
df = pd.read_csv("dados.csv")

print(df.head())

print("Valores ausentes: \n")
print(df.isna().any())

print(df.info)

#print(df["Country"].value_counts())

df["Year"] = df["Year"].astype(object)
print(df.describe())

df["WindEnergy"].plot(kind = "hist", color='#E1CDB5')
plt.title("Histograma da energia eólica")
plt.show()

df["SolarEnergy"].plot(kind = "hist", color="#E1CDB5")
plt.title("Histograma da energia solar")
plt.show()

#Agrupando por país
dadosBrasil = df[df["Country"] == "Brazil"]
dadosBrasil.head()

dadosChina = df[df["Country"] == "China"]
dadosChina.head()


#Gráfico de linha com mais de uma variável
plt.figure(figsize = (18,6))
plt.plot(dadosBrasil["Year"], dadosBrasil["TotalRenewableEnergy"], label = "Brasil")
plt.plot(dadosChina["Year"], dadosChina["TotalRenewableEnergy"], label = "China")
plt.title("Produção Total de Energia Renovável (Brasil e China)")
plt.xlabel("Anos")
plt.ylabel("Produção de Energia")
plt.legend()
plt.show()