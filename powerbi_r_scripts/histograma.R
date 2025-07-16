library(ggplot2)
df <- dataset
ggplot(df, aes(x = Valor)) +
  geom_histogram(binwidth = 10, fill = "steelblue", color = "white") +
  labs(title = "Distribuição de 'Valor'", x = "Valor", y = "Frequência") +
  theme_minimal()