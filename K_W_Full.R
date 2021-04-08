rm(list=ls())
#Loading my cleaned dataset
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
load(file = "Small_Flora.Rda")
Flora <- Small_Flora

#Range size
#Using FertGen
#Testing  homogeneity
library(car)
leveneTest(Range~FertGen, data=Flora)
#p<0.05 so variances aren't homogenous
#Attempting a transformation
leveneTest(log(Flora$Range)~Flora$FertGen)
#p>0.05 so variances are homogenous
#summary of means and sds
library(dplyr)
Flora %>%
  group_by(FertGen) %>%
  summarise(mean = mean(log(Range), na.rm=TRUE),
            sd = sd (log(Range), na.rm=TRUE))
#boxplot of range data
boxplot(log(Range)~FertGen,
        data = Flora, 
        na.rm=TRUE)
#Kruskal-Wallis Test
kruskal.test(log(Range)~FertGen, data=Flora)
#p=0.6303>0.05, so the median of at least one group differs
#Post-hoc pairwise comparison to determine which groups sig. differ
pairwise.wilcox.test(log(Flora$Range), Flora$FertGen, p.adjust.method = "BH")
#Tests the WRONG thing
#Does selfing predict range size rather than does range size predict selfing
#Outliers
OutR= boxplot(log(Range)~FertGen, data=Flora, na.rm=TRUE)$out
OutR
which(log(Flora$Range) %in% OutR)
#Without weird outliers (i.e. garden escapees)
RangeE <- Flora$Range[c(-444, -992, -1310, -1524, -1550, -3034, 
                        -108, -222, -2328,
                        -637, -1672, -2356, -2865)]
FertGenE <- Flora$FertGen[c(-444, -992, -1310, -1524, -1550, -3034, 
                            -108, -222, -2328,
                            -637, -1672, -2356, -2865)]
library(car)
leveneTest(RangeE~FertGenE) #still non-homegenous
leveneTest(log(RangeE)~FertGenE) #still homogenous
boxplot(log(RangeE)~FertGenE,
        na.rm=TRUE)
kruskal.test(log(RangeE)~FertGenE) #p<0.05
pairwise.wilcox.test(log(RangeE), FertGenE, p.adjust.method = "BH")
#self and cross differ

#2C DNA content
#Using FertGen
#Testing  homogeneity
library(car)
leveneTest(x2CDNA~FertGen, data=Flora)
leveneTest(log(x2CDNA)~FertGen, data=Flora)
leveneTest((x2CDNA)^2~FertGen, data=Flora)
leveneTest((x2CDNA)^1/2~FertGen, data=Flora)
#p>0.05 so variances are homogenous
#summary of means and sds
library(dplyr)
Flora %>%
  group_by(FertGen) %>%
  summarise(mean = mean(x2CDNA, na.rm=TRUE),
            sd = sd (x2CDNA, na.rm=TRUE))
#boxplot of range data
boxplot(x2CDNA~FertGen,
        data = Flora, 
        na.rm=TRUE)
boxplot(log(x2CDNA)~FertGen,
        data = Flora, 
        na.rm=TRUE)
#Kruskal-Wallis Test
kruskal.test(x2CDNA~FertGen, data=Flora)
#p=0.2435>0.05, so medians same across groups
#Post-hoc pairwise comparison to determine which groups sig. differ
pairwise.wilcox.test(Flora$x2CDNA, Flora$FertGen, p.adjust.method = "BH")
#Outliers
OutX= boxplot(x2CDNA~FertGen, data=Flora, na.rm=TRUE)$out
OutX
which(Flora$x2CDNA %in% OutX)
