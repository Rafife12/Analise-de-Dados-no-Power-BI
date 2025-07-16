df <- dataset
numericas <- df[sapply(df, is.numeric)]
set.seed(123)
modelo <- kmeans(numericas, centers = 3)
df$Cluster <- as.factor(modelo$cluster)
df