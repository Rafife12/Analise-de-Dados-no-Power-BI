from sklearn.cluster import KMeans
import pandas as pd
df = dataset
numericos = df.select_dtypes(include='number')
kmeans = KMeans(n_clusters=3, random_state=42)
df['Cluster'] = kmeans.fit_predict(numericos)
df