# INTRODUCTION TO PCA.

# Necessary libraries
library(tidyverse)
library(FactoMineR)
library(factoextra)
library(ggcorrplot)
library(psych)

# Reading dataset
humor_df <- read_csv2('humor_dataset.csv')

# EXPLORATORY DATA ANALYSIS
# Getting to know a little bit the data
head(humor_df[1:32], 20)

# Replacing missing values (-1) by 1
humor_df[humor_df == -1] = 1
humor_df$selfdefeating = as.numeric(humor_df$selfdefeating)

# Visualization of correlations between questions
correlations <- cor(humor_df[, 1:32])
ggcorrplot(correlations, hc.order = TRUE, type = "lower")

# PRINCIPAL COMPONENT ANALYSIS
# Modelling the algorithm
pca_solution <- PCA(humor_df[, 1:32],  graph = F)

# Getting the summary of the results obtained
summary(pca_solution)

# Eigenvalues, % var. explained and cumulative % var. of first 10 components
pca_solution <- PCA(humor_df[, 1:32],  graph = F)
pca_solution$eig[1:10,]

# Screeplot showing only the eigenvalues for the first 10 dimensions
fviz_screeplot(pca_solution, choice="eigenvalue", ncp=10)

# Parallel Analysis with correlation matrix
fa.parallel(correlations, n.obs = nrow(humor_df), fa='pc')

# Contributions of each variable in 5 components solution
pca_solution$var$contrib

# Plotting contribution of variables on dimension 1
fviz_contrib(pca_solution, choice='var', axes = 1)
# Plotting contribution of variables on dimension 2
fviz_contrib(pca_solution, choice='var', axes = 2)
# Plotting contribution of variables on dimension 3
fviz_contrib(pca_solution, choice='var', axes = 3)
# Plotting contribution of variables on dimension 4
fviz_contrib(pca_solution, choice='var', axes = 4)
# Plotting contribution of variables on dimension 5
fviz_contrib(pca_solution, choice='var', axes = 5)

# Rotation of factor loadings (changing coordinates)
sweep(pca_solution$var$contrib, 2, sqrt(pca_solution$eig[,1][1:5]),'/')
# The only item that has a high factor loading is Q22 that may be related
# to lack of humor.

