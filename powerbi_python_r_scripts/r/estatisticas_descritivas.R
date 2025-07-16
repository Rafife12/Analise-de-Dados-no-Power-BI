library(dplyr)
df <- dataset
summary_stats <- summary(df)
missing <- sapply(df, function(x) sum(is.na(x)))
result <- data.frame(Estatistica = names(missing), ValoresNulos = missing)
result