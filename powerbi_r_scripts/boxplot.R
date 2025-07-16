library(ggplot2)
df <- dataset
ggplot(df, aes(x = "", y = Valor)) +
  geom_boxplot(fill = "lightblue", outlier.color = "red") +
  labs(title = "Boxplot da variável 'Valor'", y = "Valor") +
  theme_minimal()