import matplotlib.pyplot as plt
df = dataset
plt.figure(figsize=(8, 5))
plt.scatter(df['Idade'], df['Salário'], alpha=0.7)
plt.title('Idade vs Salário')
plt.xlabel('Idade')
plt.ylabel('Salário')
plt.grid(True)
plt.tight_layout()
plt.show()