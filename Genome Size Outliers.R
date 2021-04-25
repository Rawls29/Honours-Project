rm(list=ls())
#Loading my cleaned dataset
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
load(file = "Genome_Dataset.Rda")

library(writexl)
write_xlsx(Genome_Dataset, 'Genome_Dataset.xlsx')