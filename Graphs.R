rm(list=ls())
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
par(mfrow=c(1,1))
#Genome Swarm Plot
load(file = "Small_Flora.Rda")
Fert2g = factor(Small_Flora$FertGen, 
               levels=c("generally cross", 
                        "mixed", 
                        "generally self"))
library(beeswarm)
beeswarm(x2CDNA~Fert2g, 
         data=Small_Flora, 
         log = TRUE, 
         xlab = "Mating System",
         ylab = "2C DNA Content (pg)",
         method="swarm",
         corral="wrap",
         pch=20)
boxplot(x2CDNA~Fert2g, data=Small_Flora, 
        add=TRUE, outline=FALSE, col="#00000022")
#Genome pgls Plot
df1 <- data.frame(fert=c("generally cross", "mixed", "generally self"),
                         range=c(1540.84, 1318.26, 1364.48),
                  min=c(1217.48, 1186.10, 1232.32),
                  max=c(1864.20, 1450.42, 1496.64))
Fert2g2 = factor(df1$fert, 
                levels=c("generally cross", 
                         "mixed", 
                         "generally self"))
head(df1)
library(ggplot2)
point1 <- ggplot()+
        xlab("Mating system")+
        ylab("2C DNA Content (pg)")+
        geom_point(data=df1, mapping=aes(x= Fert2g2, y=range))+
        geom_errorbar(data=df1, mapping=aes(x=fert, ymin=max, ymax=min))+
        theme(panel.grid.major = element_blank(),
              panel.grid.minor = element_blank(),
              panel.background= element_blank(),
              axis.line= element_line(colour="black"))
plot(point1)

#Aquatics Swarm plot
load(file = "Aquatics.Rda")
Fert2a = factor(Aquatics$myFertGen, 
                levels=c("generally cross", 
                         "mixed", 
                         "generally self"))
library(beeswarm)
beeswarm(log(myPlantAtRange)~Fert2a, 
         data=Aquatics, 
         xlab = "Mating System",
         ylab = "log(Range Size)",
         method="swarm",
         corral="wrap",
         pch=20)
boxplot(log(myPlantAtRange)~Fert2a, data=Aquatics, 
        add=TRUE, outline=FALSE, col="#00000022")
#Aquatics pgls plot
df2 <- data.frame(fert=c("generally cross", "mixed", "generally self"),
                  log_range=c(7.27524, 6.42899, 6.41265),
                  min=c(6.91553, 5.88266, 5.94018),
                  max=c(7.63495, 6.97532, 6.88512))
Fert2a2 = factor(df2$fert, 
                 levels=c("generally cross", 
                          "mixed", 
                          "generally self"))
head(df2)
library(ggplot2)
point2 <- ggplot()+
        xlab("Mating system")+
        ylab("log(Range Size)")+
        geom_point(data=df2, mapping=aes(x= Fert2g2, y=log_range))+
        geom_errorbar(data=df2, mapping=aes(x=Fert2g2, ymin=max, ymax=min))+
        theme(panel.grid.major = element_blank(),
              panel.grid.minor = element_blank(),
              panel.background= element_blank(),
              axis.line= element_line(colour="black"))
plot(point2)

#Coastals Swarm plot
load(file = "Coastal.Rda")
Fert2c = factor(Coastal$myFertGen, 
                levels=c("generally cross", 
                         "mixed", 
                         "generally self"))
library(beeswarm)
beeswarm(log(myPlantAtRange)~Fert2c, 
         data=Coastal, 
         xlab = "Mating System",
         ylab = "log(Range Size)",
         method="swarm",
         corral="wrap",
         pch=20)
boxplot(log(myPlantAtRange)~Fert2c, data=Coastal, 
        add=TRUE, outline=FALSE, col="#00000022")

#Montanes Swarm plot
load(file = "Alpines.Rda")
Fert2m = factor(Alpines$myFertGen, 
                levels=c("generally cross", 
                         "mixed", 
                         "generally self"))
library(beeswarm)
beeswarm(log(myPlantAtRange)~Fert2m, 
         data=Alpines, 
         xlab = "Mating System",
         ylab = "log(Range Size)",
         method="swarm",
         corral="wrap",
         pch=20)
boxplot(log(myPlantAtRange)~Fert2m, data=Alpines, 
        add=TRUE, outline=FALSE, col="#00000022")

#Non-Natives Swarm plot
load(file = "Non_Native.Rda")
Fert2nn = factor(Non_Native$myFertGen, 
                levels=c("generally cross", 
                         "mixed", 
                         "generally self"))
library(beeswarm)
beeswarm(log(myPlantAtRange)~Fert2nn, 
         data=Non_Native, 
         xlab = "Mating System",
         ylab = "log(Range)",
         method="swarm",
         corral="wrap",
         pch=20)
boxplot(log(myPlantAtRange)~Fert2nn, data=Non_Native, 
        add=TRUE, outline=FALSE, col="#00000022")

#Natives Swarm plot
load(file = "Reduced_Range_Dataset.Rda")
Fert2n = factor(Reduced_Range_Dataset$myFertGen, 
                levels=c("generally cross", 
                         "mixed", 
                         "generally self"))
library(beeswarm)
beeswarm(log(myPlantAtRange)~Fert2n, 
         data=Reduced_Range_Dataset, 
         xlab = "Mating System",
         ylab = "log(Range Size)",
         method="swarm",
         corral="wrap",
         pch=20)
boxplot(log(myPlantAtRange)~Fert2n, data=Reduced_Range_Dataset, 
        add=TRUE, outline=FALSE, col="#00000022")
#Natives plgs plot
df3 <- data.frame(fert=c("generally cross", "mixed", "generally self"),
                  range=c(1470.97, 1359.34, 1057.56),
                  min=c(958.28, 1242.87, 931.72),
                  max=c(1983.66, 1475.81, 1183.40))
Fert2n2 = factor(df3$fert, 
                 levels=c("generally cross", 
                          "mixed", 
                          "generally self"))
head(df3)
library(ggplot2)
point3 <- ggplot()+
        xlab("Mating system")+
        ylab("Range Size")+
        geom_point(data=df3, mapping=aes(x= Fert2n2, y=range))+
        geom_errorbar(data=df3, mapping=aes(x=Fert2n2, ymin=max, ymax=min))+
        theme(panel.grid.major = element_blank(),
              panel.grid.minor = element_blank(),
              panel.background= element_blank(),
              axis.line= element_line(colour="black"))
plot(point3)

#Annuals Swarm plot
load(file = "Annuals.Rda")
Fert2an = factor(Annuals$myFertGen, 
                levels=c("generally cross", 
                         "mixed", 
                         "generally self"))
library(beeswarm)
beeswarm(log(myPlantAtRange)~Fert2an, 
         data=Annuals, 
         xlab = "Mating System",
         ylab = "log(Range Size)",
         method="swarm",
         corral="wrap",
         pch=20)
boxplot(log(myPlantAtRange)~Fert2an, data=Annuals, 
        add=TRUE, outline=FALSE, col="#00000022")

#Perennials (-Endemics) Swarm Plot
load(file = "Non_Endemic_Natives.Rda")
Perennials <- Non_Endemic_Natives
Fert2p = factor(Perennials$myFertGen, 
               levels=c("generally cross", 
                        "mixed", 
                        "generally self"))
library(beeswarm)
beeswarm(log(myPlantAtRange)~Fert2p, 
         data=Perennials, 
         xlab = "Mating System",
         ylab = "log(Range Size)",
         method="swarm",
         corral="wrap",
         pch=20)
boxplot(log(myPlantAtRange)~Fert2p, data=Perennials, 
        add=TRUE, outline=FALSE, col="#00000022")
#Perennials (-Endemics) pgls plot
df4 <- data.frame(fert=c("generally cross", "mixed", "generally self"),
                 range=c(1600.37, 1362.42, 1170.23),
                 min=c(1110.24, 1227.28, 983.78),
                 max=c(2090.50, 1497.56, 1356.68))
Fert2p2 = factor(df4$fert, 
                 levels=c("generally cross", 
                          "mixed", 
                          "generally self"))
head(df4)
library(ggplot2)
point4 <- ggplot()+
        xlab("Mating system")+
        ylab("Range Size")+
        geom_point(data=df4, mapping=aes(x= Fert2p2, y=range))+
        geom_errorbar(data=df4, mapping=aes(x=Fert2p2, ymin=max, ymax=min))+
        theme(panel.grid.major = element_blank(),
              panel.grid.minor = element_blank(),
              panel.background= element_blank(),
              axis.line= element_line(colour="black"))
plot(point4)

#Perennials (no Trees)
load(file = "Non_Endemic_Natives.Rda")
Perennials <- Non_Endemic_Natives
Perennials_NoPh <- Perennials[-c(which(Perennials$myPlantAtLife1=="Ph")),]
Fert2pn = factor(Perennials_NoPh$myFertGen, 
                levels=c("generally cross", 
                         "mixed", 
                         "generally self"))
library(beeswarm)
beeswarm(log(myPlantAtRange)~Fert2pn, 
         data=Perennials_NoPh, 
         xlab = "Mating System",
         ylab = "log(Range Size)",
         method="swarm",
         corral="wrap",
         pch=20)
boxplot(log(myPlantAtRange)~Fert2pn, data=Perennials_NoPh, 
        add=TRUE, outline=FALSE, col="#00000022")

#Perennials range=fert+life_form pgls plot
df5 <- data.frame(fert=c("generally cross", "mixed", "generally self"),
                  range=c(1626.233, 1355.188, 1229.025),
                  min=c(1408.648, 1226.916, 1044.652),
                  max=c(1843.818, 1483.460, 1413.398))
Fert22 = factor(df5$fert, 
                 levels=c("generally cross", 
                          "mixed", 
                          "generally self"))
head(df5)
library(ggplot2)
point5 <- ggplot()+
        xlab("Mating system")+
        ylab("Range Size")+
        geom_point(data=df5, mapping=aes(x= Fert22, y=range))+
        geom_errorbar(data=df5, mapping=aes(x=Fert22, ymin=max, ymax=min))+
        theme(panel.grid.major = element_blank(),
              panel.grid.minor = element_blank(),
              panel.background= element_blank(),
              axis.line= element_line(colour="black"))
plot(point5)

#Range-Continents <- better to do as a swarm plot
library(readxl)
Flora <- read_excel("C:\\Users\\samra\\Documents\\My Documents\\Uni\\4th Year\\Honours Project\\R Codes\\Continent_present_data.xlsx")
library(MASS)
bc<-boxcox(Flora$myPlantAtRange~Flora$Continents_Present)
(lambda <- bc$x[which.max(bc$y)])
plot(((Flora$myPlantAtRange^lambda-1)/lambda)~Flora$Continents_Present,
     ylab = "boxcox(Range Size)",
     xlab = "Number of Contients Present",
     pch= 20)
abline(lm(((Flora$myPlantAtRange^lambda-1)/lambda)~Flora$Continents_Present))

library(beeswarm)
beeswarm(((Flora$myPlantAtRange^lambda-1)/lambda)~Flora$Continents_Present, 
         data=Flora, 
         xlab = "Continents Present",
         ylab = "boxcox(Range Size)",
         method="swarm",
         corral="wrap",
         pch=20)
boxplot(((Flora$myPlantAtRange^lambda-1)/lambda)~Flora$Continents_Present, 
        data=Flora, 
        add=TRUE, outline=FALSE, col="#00000022")
abline(lm(((Flora$myPlantAtRange^lambda-1)/lambda)~Flora$Continents_Present))