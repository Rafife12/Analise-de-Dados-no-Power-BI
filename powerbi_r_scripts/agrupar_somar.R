library(dplyr)
df <- dataset
resultado <- df %>%
  group_by(Categoria) %>%
  summarise(Soma_Valor = sum(Valor, na.rm = TRUE))
resultado