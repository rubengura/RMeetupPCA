# Introduction to PCA.

library(tidyverse)
library(FactoMineR)
library(factoextra)
library(ggcorrplot)

humor_df <- read_csv2('humor_dataset.csv')

head(humor_df, 20)
summary(humor_df)

correlations <- cor(humor_df[, 1:32])
ggcorrplot(correlations, hc.order = TRUE, type = "lower")


PCA(humor_df[, 1:32], ncp = 4, graph = T)
