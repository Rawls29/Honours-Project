rm(list=ls())
#Loading my cleaned dataset
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
load(file = "Flora_cleaned.Rda")

species <- Flora$species
genus <- Flora$genus
family <- Flora$family
Fert3 <- Flora$myFert3
Fert5 <- Flora$myFert5
FertGen <- Flora$myFertGen
Range <- Flora$myPlantAtRange
x2CDNA <- Flora$my2CDNA
x2CDNA_VAR <- Flora$my2CDNA_VAR
Ploidy <- Flora$myPloidy

Small_Flora <- data.frame(species, genus, family, Fert3, Fert5, FertGen, Range, x2CDNA, x2CDNA_VAR, Ploidy)
View(Small_Flora)

save(Small_Flora, file = "Small_Flora.Rda")