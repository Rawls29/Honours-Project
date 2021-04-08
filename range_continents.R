rm(list=ls())
library(readxl)
Flora <- read_excel("C:\\Users\\samra\\Documents\\My Documents\\Uni\\4th Year\\Honours Project\\R Codes\\Continent_present_data.xlsx")
#Range data already known to be non-normally distributed
library(car)
Flora$CP <- as.factor(Flora$Continents_Present)
leveneTest(myPlantAtRange~CP, data=Flora)
leveneTest(log(myPlantAtRange)~CP, data=Flora)
leveneTest((myPlantAtRange^1/2)~CP, data=Flora)
test.model<-lm(log(Flora$myPlantAtRange)~Flora$Continents_Present)
par(mfrow=c(2,2))
plot(test.model)
summary(test.model)

kruskal.test(myPlantAtRange~Continents_Present, data=Flora)
pairwise.wilcox.test(Flora$myPlantAtRange, 
                     Flora$Continents_Present, 
                     p.adjust.method = "BH")

library(beeswarm)
beeswarm(myPlantAtRange~Continents_Present, data=Flora)
boxplot(myPlantAtRange~Continents_Present, data=Flora, add=T, 
        col="#0000ff22")
library(beeswarm)
beeswarm(log(myPlantAtRange)~Continents_Present, data=Flora)
boxplot(log(myPlantAtRange)~Continents_Present, data=Flora, add=T, 
        col="#0000ff22")

library(MASS)
bc<-boxcox(Flora$myPlantAtRange~Flora$Continents_Present)
(lambda <- bc$x[which.max(bc$y)])
model <- lm(((Flora$myPlantAtRange^lambda-1)/lambda)~Flora$Continents_Present)
par(mfrow=c(2,2))
plot(model)
par(mfrow=c(1,1))
summary(model)

library(beeswarm)
beeswarm(((Flora$myPlantAtRange^lambda-1)/lambda)~Continents_Present, data=Flora)
boxplot(((Flora$myPlantAtRange^lambda-1)/lambda)~Continents_Present, data=Flora, add=T, 
        col="#0000ff22")
shapiro.test(((Flora$myPlantAtRange^lambda-1)/lambda))#non-normal
library(car)
leveneTest(((Flora$myPlantAtRange^lambda-1)/lambda)~CP, data=Flora)#homogenous

kruskal.test(((Flora$myPlantAtRange^lambda-1)/lambda)~Continents_Present, data=Flora)
pairwise.wilcox.test(((Flora$myPlantAtRange^lambda-1)/lambda), 
                     Flora$Continents_Present, 
                     p.adjust.method = "BH")

#Checking Perennials
Perennials <- Flora[-c(which(Flora$myPlantAtPern1=="a")),]
library(car)
leveneTest(log(myPlantAtRange)~CP, data=Perennials) #p<0.05
leveneTest(myPlantAtRange^1/2~CP, data=Perennials) #p<0.05
library(MASS)
bc<-boxcox(Perennials$myPlantAtRange~Perennials$Continents_Present)
(lambda <- bc$x[which.max(bc$y)])
shapiro.test(((Perennials$myPlantAtRange^lambda-1)/lambda)) #p<0.05, non-normal
leveneTest(log((Perennials$myPlantAtRange^lambda-1)/lambda)~CP, data=Perennials) #p<0.05, non-normal
hist(((Perennials$myPlantAtRange^lambda-1)/lambda))
library(beeswarm)
beeswarm(((Perennials$myPlantAtRange^lambda-1)/lambda)~Continents_Present, data=Perennials)
boxplot(((Perennials$myPlantAtRange^lambda-1)/lambda)~Continents_Present, data=Perennials, add=T, 
        col="#0000ff22")
kruskal.test(((Perennials$myPlantAtRange^lambda-1)/lambda)~Continents_Present, data=Perennials)
pairwise.wilcox.test(((Perennials$myPlantAtRange^lambda-1)/lambda), 
                     Perennials$Continents_Present, 
                     p.adjust.method = "BH")
model2 <- lm(((Perennials$myPlantAtRange^lambda-1)/lambda)~Perennials$Continents_Present)
par(mfrow=c(2,2))
plot(model2)
par(mfrow=c(1,1))
summary(model2)

#GLM
plot(glm(myPlantAtRange~Continents_Present, data=Flora,
    family=gaussian())) #bad
plot(glm(myPlantAtRange~Continents_Present, data=Flora,
         family=Gamma())) #flatlining
plot(glm(myPlantAtRange~Continents_Present, data=Flora,
         family=inverse.gaussian())) #VERY nope
plot(glm(myPlantAtRange~Continents_Present, data=Flora,
         family=poisson())) #nope
plot(glm(myPlantAtRange~Continents_Present, data=Flora,
         family=quasi())) #nope
plot(glm(myPlantAtRange~Continents_Present, data=Flora,
         family=quasibinomial())) #Doesn't work, not binary
plot(glm(myPlantAtRange~Continents_Present, data=Flora,
         family=quasipoisson())) #nope, non-normal
#GLM for boxcox
library(MASS)
bc<-boxcox(Flora$myPlantAtRange~Flora$Continents_Present)
(lambda <- bc$x[which.max(bc$y)])
plot(glm(((Flora$myPlantAtRange^lambda-1)/lambda)~Continents_Present, data=Flora,
         family=gaussian()))

plot(glm(((Flora$myPlantAtRange^lambda-1)/lambda)~Continents_Present, data=Flora,
         family=quasi()))

plot(glm(((Flora$myPlantAtRange^lambda-1)/lambda)~Continents_Present, data=Flora,
         family=quasipoisson()))