df = dataset
df_interpolado = df.interpolate(method='linear', limit_direction='forward')
df_interpolado