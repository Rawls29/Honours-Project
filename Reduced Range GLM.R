rm(list=ls())
#Loading my cleaned dataset
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
load(file = "Reduced_Range_Dataset.Rda")
Flora<- Reduced_Range_Dataset

model <- glm(Flora$myPlantAtRange~Flora$myFertGen,
             family=quasipoisson())
par(mfrow=c(2,2))
plot(model)
summary(model)

model2 <- glm(Flora$myPlantAtRange~Flora$myFertGen*Flroa$myPlantAtPern1,
             family=quasipoisson())
par(mfrow=c(2,2))
plot(model2)
summary(model2)

library(MASS)
bc<-boxcox(Flora$myPlantAtRange~Flora$myFertGen)
(lambda <- bc$x[which.max(bc$y)])
model3 <- lm(((Flora$myPlantAtRange^lambda-1)/lambda)~Flora$myFertGen)
plot(model3)
summary(model3)

No_Endemics <- Flora[-c(2871, 2881, 2751, 2865),]
library(MASS)
bc<-boxcox(No_Endemics$myPlantAtRange~No_Endemics$myFertGen)
(lambda <- bc$x[which.max(bc$y)])
model3 <- lm(((No_Endemics$myPlantAtRange^lambda-1)/lambda)~No_Endemics$myFertGen)
plot(model3)
summary(model3)