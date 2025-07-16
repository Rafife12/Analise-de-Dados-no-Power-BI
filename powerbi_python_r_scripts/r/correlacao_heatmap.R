library(corrplot)
df <- dataset
numericas <- df[sapply(df, is.numeric)]
cor_matrix <- cor(numericas, use = "complete.obs")
corrplot(cor_matrix, method = "color", type = "upper", tl.col = "black")