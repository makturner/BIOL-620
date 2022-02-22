#Author: Makayla Turner, Date: Feb 22, 2022, Purpose: To generate box plots for raw microarray datasets

setwd("/Users/makaylaturner/Desktop/GSE344_RAW1")
library(affy)
eset <- ReadAffy()
#Box plots for raw datasets
boxplot(eset)
# Perform RMA normalization

# Box plots for normalized datasets
rma <- exprs(eset_Norm)
boxplot(rma)