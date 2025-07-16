import pandas as pd
df = dataset
summary = df.describe(include='all')
missing = df.isnull().sum()
result = pd.concat([summary, missing.rename("Valores Nulos")], axis=1)
result.reset_index(inplace=True)
result