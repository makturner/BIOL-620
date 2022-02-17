#Author: Makayla Turner, Date: Feb 15, 2022, Purpose: To perform microarray normalization

setwd("/Users/makaylaturner/Desktop/GSE344_RAW1")
#Load package affy
library(affy)
#Reading the .CEL files
eset <- ReadAffy()