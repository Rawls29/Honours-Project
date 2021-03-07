rm(list=ls())
#Loading my cleaned dataset
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
load(file = "Small_Flora.Rda")
Flora <- Small_Flora

library(beeswarm)
beeswarm(log(Range)~FertGen, data=Flora)
boxplot(log(Range)~FertGen, data=Flora, add=T, 
        col="#0000ff22")

boxplot(log(Flora$Range)~Flora$FertGen+Flora$family)

#Swarm plot excluding outliers which are prob. garden escapes or similar
RangeE <- Flora$Range[c(-444, -992, -1310, -1524, -1550, -3034, 
                  -108, -222, -2328,
                  -637, -1672, -2356, -2865)]
FertGenE <- Flora$FertGen[c(-444, -992, -1310, -1524, -1550, -3034, 
                          -108, -222, -2328,
                          -637, -1672, -2356, -2865)]
library(beeswarm)
beeswarm(log(RangeE)~FertGenE, xlab = "Mating System", ylab = "log(Range Size)")
boxplot(log(RangeE)~FertGenE, add=T, 
        col="#0000ff22")

#Getting Ns
summary(beeswarm(log(Range)~FertGen, data=Flora))
which(is.na(log(Flora$Range))==FALSE & Flora$FertGen == "generally cross")
which(is.na(log(Flora$Range))==FALSE & Flora$FertGen == "generally self")
which(is.na(log(Flora$Range))==FALSE & Flora$FertGen == "mixed")

OutR= boxplot(log(Range)~FertGen, data=Flora, na.rm=TRUE)$out
OutR
which(log(Flora$Range) %in% OutR & Flora$FertGen=="generally cross")
which(log(Flora$Range) %in% OutR & Flora$FertGen=="generally self")
which(log(Flora$Range) %in% OutR & Flora$FertGen=="mixed")


library(beeswarm)
beeswarm(x2CDNA~FertGen, data=Flora, log = TRUE, xlab = "Mating System",
         ylab = "2C DNA Content (pg)")
boxplot(x2CDNA~FertGen, data=Flora, add=T, 
        col="#0000ff22")

#Getting Ns
summary(beeswarm(x2CDNA~FertGen, data=Flora))
which(is.na(Flora$x2CDNA)==FALSE & Flora$FertGen == "generally cross")
which(is.na(Flora$x2CDNA)==FALSE & Flora$FertGen == "generally self")
which(is.na(Flora$x2CDNA)==FALSE & Flora$FertGen == "mixed")

OutX= boxplot(x2CDNA~FertGen, data=Flora, na.rm=TRUE)$out
OutX
which(Flora$x2CDNA %in% OutX & Flora$FertGen=="generally cross")
which(Flora$x2CDNA %in% OutX & Flora$FertGen=="generally self")
which(Flora$x2CDNA %in% OutX & Flora$FertGen=="mixed")

library(beeswarm)
beeswarm(log(x2CDNA)~FertGen, data=Flora)
boxplot(log(x2CDNA)~FertGen, data=Flora, add=T, 
        col="#0000ff22")

library(beeswarm)
RangeE <- Flora$myPlantAtRange[c(-444, -992, -1310, -1524, -1550, -3034, 
                                 -108, -222, -2328,
                                 -637, -1672, -2356, -2865)]
FertGenE <- Flora$myFertGen[c(-444, -992, -1310, -1524, -1550, -3034, 
                              -108, -222, -2328,
                              -637, -1672, -2356, -2865)]
StatusE <- Flora$Status[c(-444, -992, -1310, -1524, -1550, -3034, 
                          -108, -222, -2328,
                          -637, -1672, -2356, -2865)]
N_Limit_UKE <- Flora$Northern.Limit.in.Britain[c(-444, -992, -1310, -1524, -1550, -3034, 
                                                 -108, -222, -2328,
                                                 -637, -1672, -2356, -2865)]
beeswarm(log(RangeE)~FertGenE+StatusE)
boxplot(log(RangeE)~FertGenE+StatusE, add=T, 
        col="#0000ff22")
beeswarm(log(RangeE)~FertGenE+N_Limit_UKE)
boxplot(log(RangeE)~FertGenE+N_Limit_UKE, add=T, 
        col="#0000ff22")