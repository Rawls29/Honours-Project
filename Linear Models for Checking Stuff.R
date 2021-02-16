rm(list=ls())
#Loading my cleaned dataset
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
load(file = "Small_Flora.Rda")
Flora <- Small_Flora
#na.rm = TRUE allows the exclusion of NAs when doing maths
by(Flora$Range, Flora$Fert5, mean, na.rm = TRUE)
by(Flora$x2CDNA, Flora$Fert5, mean, na.rm = TRUE)

Fert_Range <- lm(Flora$Range~Flora$Fert5)
par(mfrow=c(2,2))
plot(Fert_Range)

Fert_2C <- lm (Flora$x2CDNA~Flora$Fert5)
plot(Fert_2C)

plot(lm((1/(sqrt(Flora$Range)))~Flora$Fert5))


x <- Flora$Range^(1/3)
y <- 1/x

plot(lm(y~Flora$Fert5))

shapiro.test(Flora$Range)
shapiro.test(Flora$x2CDNA)
shapiro.test(log(Flora$x2CDNA))

plot(lm(log(Flora$x2CDNA)~Flora$Fert5))

par(mfrow=c(1,1))

hist(Flora$x2CDNA)
hist(log(Flora$x2CDNA))

hist(Flora$Range)
hist((Flora$Range)^2)
hist((Flora$Range)^1/2)
hist(1/((Flora$Range)^1/2))
hist(1/(Flora$Range))
hist((Flora$Range)^1/3)
hist(log(Flora$Range))
hist(log10(Flora$Range))


#Density plots
plot(density(x))
plot(density(log(Flora$x2CDNA)))
par(mfrow=c(2,2))
plot(density(Flora$Range, na.rm = TRUE))
plot(density(Flora$x2CDNA, na.rm = TRUE))
lx <- log(Flora$x2CDNA)
plot(density(lx,na.rm=TRUE))
lr <- log(Flora$Range)
plot(density(lr, na.rm = TRUE))

#Testing affect of different transformations on range size
par(mfrow=c(2,2))
plot(density(Flora$Range, na.rm = TRUE))
qqnorm(Flora$Range)
#sqaure
sqR <- (Flora$Range)^2
plot(density(sqR, na.rm = TRUE))
plot(lm(sqR~Flora$Fert5))
shapiro.test(sqR)
#sqrt
sqrtR <- (Flora$Range)^1/2
plot(density(sqrtR, na.rm = TRUE))
plot(lm(sqrtR~Flora$Fert5))
shapiro.test(sqrtR)
#1/x
inR <- 1/(Flora$Range)
plot(density(inR, na.rm = TRUE))
plot(lm(inR~Flora$Fert5))
shapiro.test(inR)
#1/(sqrt)
insqrtR <- 1/((Flora$Range)^1/2)
plot(density(insqrtR, na.rm = TRUE))
plot(lm(insqrtR~Flora$Fert5))
shapiro.test(insqrtR)
#cuberoot
cbrtR <- (Flora$Range)^1/3
plot(density(cbrtR, na.rm = TRUE))
plot(lm(cbrtR~Flora$Fert5))
shapiro.test(cbrtR)
#ln
lnR <- log(Flora$Range)
plot(density(lnR, na.rm = TRUE))
plot(lm(lnR~Flora$Fert5))
shapiro.test(lnR)
#log10
logR <- log10(Flora$Range)
plot(density(logR, na.rm = TRUE))
plot(lm(logR~Flora$Fert5))
shapiro.test(logR)
#arcsine trasnformation asin(sqrt(x)))
#Doesn't work if values aren't between 0 & 1
small_r <- Flora$Range/max(Flora$Range, na.rm = TRUE)
asR <- asin(sqrt(small_r))
plot(density(asR, na.rm = TRUE))
plot(lm(asR~Flora$Fert5))
shapiro.test(asR)
#(x-mean)/sd
nR <- (Flora$Range-mean(Flora$Range, na.rm = TRUE))/sd(Flora$Range, na.rm=TRUE)
plot(density(nR, na.rm = TRUE))
plot(lm(nR~Flora$Fert5))
shapiro.test(nR)
#log(x/(1-x))
#Doesn't work if values aren't between 0 & <1
#Can't get Q-Q plot, why?
#If there's a 1, 1-1=0 so x/0=infinity
x_over_one_minus_x <- small_r/(1-small_r)
R1 <- log(x_over_one_minus_x)
plot(density(R1, na.rm = TRUE))
plot(lm(R1~Flora$Fert5))
shapiro.test(R1)
#1/2 log((1+x)/(1-x))

#sqrt(arcsin(x))
sqrtasR <- sqrt(asR)
plot(density(sqrtasR, na.rm=TRUE))
qqnorm(sqrtasR)
plot(lm(sqrtasR~Flora$Fert5))
shapiro.test(sqrtasR)
#log(arcsin(x))
logasR <-  log(asR)
plot(density(logasR, na.rm=TRUE))
plot(lm(logasR~Flora$Fert5))
shapiro.test(logasR)
#cuberoot(arcsin(x))
cbrtasR <- (asR)^1/3
plot(density(cbrtasR, na.rm=TRUE))
qqnorm(cbrtasR)
plot(lm(cbrtasR~Flora$Fert5))
shapiro.test(cbrtasR)

#box cox attempt
#range
library(MASS)
yr = Flora$Range
xr = Flora$Fert5
model_r <- lm(yr~xr)
bcr <- boxcox(yr~xr)
lamba_r <- (lambda <- bcr$x[which.max(bcr$y)])
new_model_r <- lm(((yr^lamba_r-1)/lamba_r)~xr)
plot(new_model_r)
op <- par(pty="s",mfrow=c(2,1))
qqnorm(model_r$residuals)
qqline(model_r$residuals)
qqnorm(new_model_r$residuals)
qqline(new_model_r$residuals)
par(op)
#2C
library(MASS)
yx = Flora$x2CDNA
xx = Flora$Fert5
model_x <- lm(yx~xx)
bcx <- boxcox(yx~xx)
lamba_x <- (lambda <- bcx$x[which.max(bcx$y)])
new_model_x <- lm(((yx^lamba_x-1)/lamba_x)~xx)
plot(new_model_x)
op <- par(pty="s",mfrow=c(2,1))
qqnorm(model_x$residuals)
qqline(model_x$residuals)
qqnorm(new_model_x$residuals)
qqline(new_model_x$residuals)
par(op)

#Testing affect of different transformations on 2C size
par(mfrow=c(1,1))
plot(density(Flora$x2CDNA, na.rm = TRUE))
plot(lm(Flora$x2CDNA~Flora$Fert5))
#sqaure
sqX <- (Flora$x2CDNA)^2
plot(density(sqX, na.rm = TRUE))
plot(lm(sqX~Flora$Fert5))
shapiro.test(sqX)
#sqrt
sqrtX <- (Flora$x2CDNA)^1/2
plot(density(sqrtX, na.rm = TRUE))
plot(lm(sqrtX~Flora$Fert5))
shapiro.test(sqrtX)
#1/x
inX <- 1/(Flora$x2CDNA)
plot(density(inX, na.rm = TRUE))
plot(lm(inX~Flora$Fert5))
shapiro.test(inX)
#1/(sqrt)
insqrtX <- 1/((Flora$x2CDNA)^1/2)
plot(density(insqrtX, na.rm = TRUE))
plot(lm(insqrtX~Flora$Fert5))
shapiro.test(insqrtX)
#cuberoot
cbrtX <- (Flora$x2CDNA)^1/3
plot(density(cbrtX, na.rm = TRUE))
plot(lm(cbrtX~Flora$Fert5))
shapiro.test(cbrtX)
#ln
lnX <- log(Flora$x2CDNA)
plot(density(lnX, na.rm = TRUE))
plot(lm(lnX~Flora$Fert5))
shapiro.test(lnX)
#log10
logX <- log10(Flora$x2CDNA)
plot(density(logX, na.rm = TRUE))
plot(lm(logX~Flora$Fert5))
shapiro.test(logX)
#arcsine trasnformation asin(sqrt(x)))
#Doesn't work if values aren't between 0 & 1
small_x <- Flora$x2CDNA/max(Flora$x2CDNA, na.rm = TRUE)
asX <- asin(sqrt(small_x))
plot(density(asX, na.rm = TRUE))
plot(lm(asX~Flora$Fert5))
shapiro.test(asX)
#(x-mean)/sd
nX <- (Flora$x2CDNA-mean(Flora$x2CDNA, na.rm = TRUE))/sd(Flora$x2CDNA, na.rm=TRUE)
plot(density(nX, na.rm = TRUE))
plot(lm(nX~Flora$Fert5))
shapiro.test(nX)
#sqrt(arcsin(x))
sqrtasX <- sqrt(asX)
plot(density(sqrtasX, na.rm=TRUE))
plot(lm(sqrtasX~Flora$Fert5))
shapiro.test(sqrtasX)
#1/log(x) <- introduces infinites, must be dividing by 0
inlnx <- 1/log(Flora$x2CDNA)
plot(density(inlnx, na.rm=TRUE))
qqnorm(inlnx)
par(mfrow=c(2,2))
plot(lm(inlnx~Flora$Fert5))
par(mfrow=c(1,1))
shapiro.test(inlnx)
#log(sqrt(x))
lnsqrtx <- log((sqrt(Flora$x2CDNA)))
plot(density(lnsqrtx, na.rm=TRUE))
qqnorm(lnsqrtx)
par(mfrow=c(2,2))
plot(lm(lnsqrtx~Flora$Fert5))
par(mfrow=c(1,1))
shapiro.test(lnsqrtx)
#log(x^2)
lnsqx <- log(Flora$x2CDNA^2)
par(mfrow=c(1,1))
plot(density(lnsqx, na.rm=TRUE))
qqnorm(lnsqx)
par(mfrow=c(2,2))
plot(lm(lnsqx~Flora$Fert5))
par(mfrow=c(1,1))
shapiro.test(lnsqx)
#sqrt(ln(x))
sqrtlnx <- sqrt(log(Flora$x2CDNA))
plot(density(sqrtlnx, na.rm=TRUE))
qqnorm(sqrtlnx)
par(mfrow=c(2,2))
plot(lm(sqrtlnx~Flora$Fert5))
par(mfrow=c(1,1))
shapiro.test(sqrtlnx)
library(nortest)
ad.test(sqrtlnx)
hist(sqrtlnx)
#cbrt(ln(x))
cbrtlnx <- (log(Flora$x2CDNA))^1/3
par(mfrow=c(1,1))
plot(density(cbrtlnx, na.rm=TRUE))
qqnorm(cbrtlnx)
par(mfrow=c(2,2))
plot(lm(cbrtlnx~Flora$Fert5))
par(mfrow=c(1,1))
shapiro.test(cbrtlnx)
#2sqrt(ln(x))
x2sqrtlnx <- 2*(sqrt(log(Flora$x2CDNA)))
plot(density(x2sqrtlnx, na.rm=TRUE))
qqnorm(x2sqrtlnx)
par(mfrow=c(2,2))
plot(lm(x2sqrtlnx~Flora$Fert5))
par(mfrow=c(1,1))
shapiro.test(x2sqrtlnx)
#1/2sqrt(ln(x))
sqrtlnx <- sqrt(log(Flora$x2CDNA))
plot(density(sqrtlnx/2, na.rm=TRUE))
qqnorm(sqrtlnx/2)
qqline(sqrtlnx/2)
par(mfrow=c(2,2))
plot(lm(sqrtlnx/2~Flora$Fert5))
par(mfrow=c(1,1))
shapiro.test(sqrtlnx/2)