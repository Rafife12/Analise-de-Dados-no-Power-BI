df <- dataset
df$Classificacao <- ifelse(df$Valor > 100, "Alto", "Baixo")
df