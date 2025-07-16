df <- dataset
coluna <- "Valor"
Q1 <- quantile(df[[coluna]], 0.25, na.rm = TRUE)
Q3 <- quantile(df[[coluna]], 0.75, na.rm = TRUE)
IQR <- Q3 - Q1
df_limpo <- df[df[[coluna]] >= (Q1 - 1.5 * IQR) & df[[coluna]] <= (Q3 + 1.5 * IQR), ]
df_limpo