library(zoo)
df <- dataset
num_cols <- sapply(df, is.numeric)
df[num_cols] <- lapply(df[num_cols], function(x) na.approx(x, na.rm = FALSE))
df