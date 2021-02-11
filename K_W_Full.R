rm(list=ls())
#Loading my cleaned dataset
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
load(file = "Small_Flora.Rda")
Flora <- Small_Flora

#Range size
#Using Fert5
#Testing  homogeneity
library(car)
leveneTest(Range~Fert5, data=Flora)
#p<0.05 so variances aren't homogenous
#Attempting a transformation
leveneTest(log(Flora$Range)~Flora$Fert5)
#p>0.05 so variances are homogenous
#summary of means and sds
library(dplyr)
Flora %>%
  group_by(Fert5) %>%
  summarise(mean = mean(log(Range), na.rm=TRUE),
            sd = sd (log(Range), na.rm=TRUE))
#boxplot of range data
boxplot(log(Flora$Range)~Flora$Fert5,
        na.rm=TRUE)
#Kruskal-Wallis Test
kruskal.test(Fert5~log(Range), data=Flora)
kruskal.test(log(Range)~Fert5, data=Flora)
#p=0.7703>0.05, so the median of at least one group differs
#Post-hoc pairwise comparison to determine which groups sig. differ
pairwise.wilcox.test(log(Flora$Range), Flora$Fert5, p.adjust.method = "BH")

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
kruskal.test(FertGen~log(Range), data=Flora)
kruskal.test(log(Range)~FertGen, data=Flora)
#p=0.6303>0.05, so the median of at least one group differs
#Post-hoc pairwise comparison to determine which groups sig. differ
pairwise.wilcox.test(log(Flora$Range), Flora$FertGen, p.adjust.method = "BH")
#Tests the WRONG thing
#Does selfing predict range size rather than does range size predict selfing

#2C DNA content
#Using Fert5
#Testing  homogeneity
library(car)
leveneTest(x2CDNA~Fert5, data=Flora)
#p>0.05 so variances are homogenous
#summary of means and sds
library(dplyr)
Flora %>%
  group_by(Fert5) %>%
  summarise(mean = mean(x2CDNA, na.rm=TRUE),
            sd = sd (x2CDNA, na.rm=TRUE))
#boxplot of range data
boxplot(x2CDNA~Fert5,
        data = Flora, 
        na.rm=TRUE)
#Kruskal-Wallis Test
kruskal.test(Fert5~x2CDNA, data=Flora)
kruskal.test(x2CDNA~Fert5, data=Flora)
#p=0.2786>0.05, so the median of at least one group differs
#Post-hoc pairwise comparison to determine which groups sig. differ
pairwise.wilcox.test(Flora$x2CDNA, Flora$Fert5, p.adjust.method = "BH")

#Using FertGen
#Testing  homogeneity
library(car)
leveneTest(x2CDNA~FertGen, data=Flora)
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
#Kruskal-Wallis Test
kruskal.test(FertGen~x2CDNA, data=Flora)
kruskal.test(x2CDNA~FertGen, data=Flora)
#p=0.1436>0.05, so the median of at least one group differs
#Post-hoc pairwise comparison to determine which groups sig. differ
pairwise.wilcox.test(Flora$x2CDNA, Flora$FertGen, p.adjust.method = "BH")
