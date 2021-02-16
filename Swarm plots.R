rm(list=ls())
#Loading my cleaned dataset
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
load(file = "Small_Flora.Rda")
Flora <- Small_Flora

library(beeswarm)
beeswarm(log(Range)~FertGen, data=Flora)
boxplot(log(Range)~FertGen, data=Flora, add=T, 
        col="#0000ff22")

library(beeswarm)
beeswarm(x2CDNA~FertGen, data=Flora)
boxplot(x2CDNA~FertGen, data=Flora, add=T, 
        col="#0000ff22")

OutX= boxplot(x2CDNA~FertGen, data=Flora, na.rm=TRUE)$out
OutX
which(Flora$x2CDNA %in% OutX & Flora$FertGen=="generally cross")

which(Flora$x2CDNA %in% OutX & Flora$FertGen=="generally self")

which(Flora$x2CDNA %in% OutX & Flora$FertGen=="mixed")

library(beeswarm)
beeswarm(log(x2CDNA)~FertGen, data=Flora)
boxplot(log(x2CDNA)~FertGen, data=Flora, add=T, 
        col="#0000ff22")

Flora$species[707]
Flora$family[707]
Flora$x2CDNA[707]
Flora$x2CDNA_VAR[707]
Flora$Ploidy[707]