rm(list=ls())
#Loading my cleaned dataset
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
load(file = "Flora_cleaned.Rda")
Flora$Altitude..1..maximum.recorded..m. <- as.numeric(Flora$Altitude..1..maximum.recorded..m.)
Flora$Altitude..2..minimum.recorded..m. <- as.numeric(Flora$Altitude..2..minimum.recorded..m.)
Mean_Altitude=(Flora$Altitude..1..maximum.recorded..m.+
                 Flora$Altitude..2..minimum.recorded..m.)/2

RangeE <- Flora$myPlantAtRange[c(-444, -992, -1310, -1524, -1550, -3034, 
                                 -108, -222, -2328,
                                 -637, -1672, -2356, -2865)]
AltitudeE <- Mean_Altitude[c(-444, -992, -1310, -1524, -1550, -3034, 
                             -108, -222, -2328,
                             -637, -1672, -2356, -2865)]
FertE <- Flora$myFertGen[c(-444, -992, -1310, -1524, -1550, -3034, 
                           -108, -222, -2328,
                           -637, -1672, -2356, -2865)]

hist(Flora$myPlantAtRange)
hist(Mean_Altitude)

hist(log(Flora$myPlantAtRange))
hist(log(Mean_Altitude))

par(mfrow=c(2,2))
#Basic GLM
model <- glm(Flora$myPlantAtRange~Flora$myFertGen+Mean_Altitude,
    family = poisson())
plot(model)
#

#Adding interaction
model2 <- glm(Flora$myPlantAtRange~Flora$myFertGen+Mean_Altitude+
                Flora$myFertGen*Mean_Altitude,
              family=poisson())
plot(model2)

#log link
model3 <- glm(Flora$myPlantAtRange~Flora$myFertGen+Mean_Altitude+
                Flora$myFertGen*Mean_Altitude,
              family=poisson(link="log"))
plot(model3)
#non-homogenous variance
#QQ plot non-normal (S)
#lots of residuals have very high leverage

#Attempting a different link
model4 <- glm(Flora$myPlantAtRange~Flora$myFertGen+Mean_Altitude+
                Flora$myFertGen*Mean_Altitude,
              family=poisson(link="identity"))
plot(model4)
#non-homogenous variance
#QQ plot non-normal (S)
#lots of residuals with very high leverage

#Attempts to normalize plots and redice leverage
model5 <- glm(log(Flora$myPlantAtRange)~Flora$myFertGen+Mean_Altitude+
                Flora$myFertGen*Mean_Altitude,
              family=poisson(link="log"))
plot(model5) #Awful by all standards BUT first one without huge leverage

model6 <- glm(Flora$myPlantAtRange~Flora$myFertGen+log(Mean_Altitude)+
                Flora$myFertGen*log(Mean_Altitude),
              family=poisson(link="log"))
plot(model6)

model7 <- glm(log(Flora$myPlantAtRange)~Flora$myFertGen+log(Mean_Altitude)+
               Flora$myFertGen*log(Mean_Altitude),
             family=poisson(link="log"))
plot(model7) #log(Range) makes everything very much less normal

#Trying out quasipoisson?
model8 <- glm(Flora$myPlantAtRange~Flora$myFertGen+Mean_Altitude+
                Flora$myFertGen*Mean_Altitude,
              family=quasipoisson(link="log"))
plot(model8) #Leverage a LOT better
summary(model8)
#Turns out I dont need the "Flora$myFertGen+Mean_Altitude" (Thanks Matty)
model9 <- glm(Flora$myPlantAtRange~Flora$myFertGen*Mean_Altitude,
              family=quasipoisson(link="log"))
plot(model9)
summary(model9)
#Testing different families with default links
#poisson
plot(model2)
#quasipoisson
plot(model9)
#binomial
model10 <- glm(Flora$myPlantAtRange~Flora$myFertGen*Mean_Altitude,
              family=binomial())
plot(model10) #Doesn't work (y value must be 0<=y<=1)
#gaussian
model11 <- glm(Flora$myPlantAtRange~Flora$myFertGen*Mean_Altitude,
               family=gaussian())
plot(model11) #looks ok
#Gamma
model12 <- glm(Flora$myPlantAtRange~Flora$myFertGen*Mean_Altitude,
               family=Gamma())
plot(model12) #ok
#inverse.gaussian
model13 <- glm(Flora$myPlantAtRange~Flora$myFertGen*Mean_Altitude,
               family=inverse.gaussian())
plot(model13) #Doesn't work
#quasi
model14 <- glm(Flora$myPlantAtRange~Flora$myFertGen*Mean_Altitude,
               family=quasi())
plot(model14) #ok
#quasibinomial
model15 <- glm(Flora$myPlantAtRange~Flora$myFertGen*Mean_Altitude,
               family=quasibinomial())
plot(model15) #error, y values must be 0<=y<=1

#log(range) quasipoisson
model16 <- glm(log(Flora$myPlantAtRange)~Flora$myFertGen*Mean_Altitude,
              family=quasipoisson(link="log"))
plot(model16)
#log(altitude) quasipoisson
model17 <- glm(Flora$myPlantAtRange~Flora$myFertGen*log(Mean_Altitude),
              family=quasipoisson(link="log"))
plot(model17)
#log(range) & log  (altitude) quasipoisson
model18 <- glm(log(Flora$myPlantAtRange)~Flora$myFertGen*log(Mean_Altitude),
              family=quasipoisson(link="log"))
plot(model18)

scaled_r <- Flora$myPlantAtRange/max(Flora$myPlantAtRange, na.rm=TRUE)
scaled_a <- Mean_Altitude/max(Mean_Altitude, na.rm=TRUE)

model19 <- glm(scaled_r~Flora$myFertGen*Mean_Altitude,
               family=quasipoisson())
plot(model19)

model20 <- glm(scaled_r~Flora$myFertGen*scaled_a,
               family=quasipoisson())
plot(model20)

model21 <- glm(scaled_r~Flora$myFertGen*scaled_a,
               family=quasibinomial())
plot(model21)

par(mfrow=c(2,2))
#poisson
plot(model2)
#quasipoisson
plot(model9)
#gaussian
plot(model11)
#Gamma
plot(model12)
#quasi
plot(model14)

plot(glm(log(RangeE)~FertE*log(AltitudeE),
              family=gaussian()))

plot(glm(log(RangeE)~FertE*AltitudeE,
         family=gaussian()))

scaled_re <- RangeE/max(RangeE, na.rm=TRUE)
scaled_ae <- AltitudeE/max(AltitudeE, na.rm=TRUE)

plot(glm(scaled_re~FertE*AltitudeE,
         family=gaussian(link="log")))

plot(glm(scaled_re~FertE*scaled_ae,
         family=quasibinomial()))

log_s_re <- log(scaled_re)

plot(glm(log_s_re~FertE*scaled_ae,
         family=gaussian()))
