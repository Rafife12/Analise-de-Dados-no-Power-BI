# Instalação e carregamento de pacotes
install.packages("tidyverse")
install.packages("caTools")
install.packages("caret")

library(tidyverse)
library(caTools)
library(caret)

# Importação de dados
dados <- read.csv("caminho/do/arquivo.csv", sep = ";", header = TRUE)
View(dados)
glimpse(dados)
summary(dados)

# Limpeza e transformação
dados <- select(dados, coluna1, coluna2)
dados_filtrados <- filter(dados, coluna1 == "valor")
dados <- mutate(dados, nova_coluna = coluna1 * 2)
dados <- rename(dados, nova_coluna = coluna_antiga)
dados <- na.omit(dados)
dados <- separate(dados, coluna_composta, into = c("parte1", "parte2"), sep = "-")

# Análise exploratória
summary(dados)
mean(dados$coluna1)
sd(dados$coluna1)

# Visualização
ggplot(dados, aes(x = coluna1, y = coluna2)) + geom_point()
ggplot(dados, aes(x = coluna_categorica)) + geom_bar()

# Preparação dos dados
set.seed(123)
split <- sample.split(dados$variavel_resposta, SplitRatio = 0.7)
dados_treino <- subset(dados, split == TRUE)
dados_teste <- subset(dados, split == FALSE)

# Modelo preditivo
modelo <- lm(variavel_resposta ~ ., data = dados_treino)
summary(modelo)

# Avaliação
previsoes <- predict(modelo, newdata = dados_teste)
resultado <- data.frame(real = dados_teste$variavel_resposta, previsto = previsoes)
mse <- mean((resultado$real - resultado$previsto)^2)
mse
