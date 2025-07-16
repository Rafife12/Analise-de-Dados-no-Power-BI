library(ggplot2)
df <- dataset
ggplot(df, aes(x = Idade, y = Salario)) +
  geom_point(alpha = 0.7, color = "blue") +
  theme_minimal() +
  labs(title = "Idade vs Salário", x = "Idade", y = "Salário")