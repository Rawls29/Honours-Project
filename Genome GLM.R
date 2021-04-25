rm(list=ls())
#Loading my cleaned dataset
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
load(file = "Genome_Dataset.Rda")

log_2C <- log(Genome_Dataset$my2CDNA)

model <- glm(log_2C~Genome_Dataset$myFertGen, 
                 family=gaussian())
plot(model)
summary(model)

library(MASS)
bc<-boxcox(Genome_Dataset$my2CDNA~Genome_Dataset$myFertGen)
(lambda <- bc$x[which.max(bc$y)])
model2 <- lm(((Genome_Dataset$my2CDNA^lambda-1)/lambda)~Genome_Dataset$myFertGen)
par(mfrow=c(2,2))
plot(model2)
summary(model2)
shapiro.test(((Genome_Dataset$my2CDNA^lambda-1)/lambda)) #p<0.05 so non-normal
library(car)
leveneTest(((Genome_Dataset$my2CDNA^lambda-1)/lambda)~Genome_Dataset$myFertGen) #p>0.05 so homogenous
library(beeswarm)
beeswarm(((Genome_Dataset$my2CDNA^lambda-1)/lambda)~myFertGen, data=Genome_Dataset)
boxplot(((Genome_Dataset$my2CDNA^lambda-1)/lambda)~myFertGen, data=Genome_Dataset, add=T, 
        col="#0000ff22")

model3 <- glm(((Genome_Dataset$my2CDNA^lambda-1)/lambda)~Genome_Dataset$myFertGen,
              family=gaussian())
plot(model3)
summary(model3)