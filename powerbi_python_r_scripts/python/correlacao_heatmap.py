import seaborn as sns
import matplotlib.pyplot as plt
df = dataset
corr = df.corr(numeric_only=True)
plt.figure(figsize=(10, 8))
sns.heatmap(corr, annot=True, cmap='coolwarm', fmt=".2f")
plt.title('Mapa de Calor - Correlação')
plt.tight_layout()
plt.show()