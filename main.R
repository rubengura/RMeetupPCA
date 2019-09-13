# Introduction to PCA.

# Necessary libraries
library(tidyverse)
library(FactoMineR)
library(factoextra)
library(ggcorrplot)

# Reading dataset
humor_df <- read_csv2('humor_dataset.csv')

# Getting to know a little bit the data
head(humor_df, 20)
summary(humor_df)

# Visualization of correlations between questions
correlations <- cor(humor_df[, 1:32])
ggcorrplot(correlations, hc.order = TRUE, type = "lower")

# Principal Component Analysis
PCA(humor_df[, 1:32], ncp = 4, graph = T)
