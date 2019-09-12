# Introduction to PCA.

library(tidyverse)
library(FactoMineR)
library(factoextra)
library(ggcorrplot)

humor_df <- read_csv2('humor_dataset.csv')

head(humor_df, 20)
