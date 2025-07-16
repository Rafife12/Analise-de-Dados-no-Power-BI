df <- dataset
frequencia <- as.data.frame(table(df$Categoria))
names(frequencia) <- c("Categoria", "Frequência")
frequencia