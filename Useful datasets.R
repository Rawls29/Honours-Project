rm(list=ls())
#Loading my cleaned dataset
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
load(file = "Flora_cleaned.Rda")

Useful_Flora <- Flora[complete.cases(Flora$myFertGen),]
View(Useful_Flora)

Range_Dataset <- Useful_Flora[complete.cases(Useful_Flora$myPlantAtRange),]
save(Range_Dataset, file = "Range_Dataset.Rda")

Genome_Dataset <- Useful_Flora[complete.cases(Useful_Flora$my2CDNA),]
save(Genome_Dataset, file = "Genome_Dataset.Rda")