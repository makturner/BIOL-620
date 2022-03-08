#Author: Makayla Turner, Date: Mar 8, 2022, Purpose: To generate box plots for raw microarray datasets
setwd("/Users/makaylaturner/Desktop/GSE344_RAW1")
library(affy)
eset <- ReadAffy()
# Perform RMA normalization
eset_Norm <- rma(eset)
rma <- exprs(eset_Norm)
#Log base 2, or base 10, To perform log transformation do following
Treatment <- apply(rma[,c("GSM4843.CEL", "GSM4844.CEL")],1,log)
Control <- apply(rma[,c("GSM4845.CEL","GSM4846.CEL","GSM4847.CEL")],1,log)
#TRANSPOSE: Switch columns to rows and rowa to columns!!
#Perform transpose so that samples are your columns and genes are your rows!!
Treatment_T <- t(Treatment)
Control_T <- t(Control)
#To make fold changes, we first need to take mean/average for treatment and control samples
Treatment_T_Mean <- rowMeans(Treatment_T)
Control_T_Mean <- rowMeans(Control_T)
#Get the subtraction fols change for treatment over control
Fold_Change <- Treatment_T_Mean-Control_T_Mean
#Assignment: Export variable "Fold Change" as a .csv format file with name "Fold_changes.csv"
hint: https://www.statology.org/export-data-