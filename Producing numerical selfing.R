Flora = read.delim('C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes/finalFlat.csv', sep='|', na.strings=c("","NA","nan", "NaN", "Na"))

#Inserting a new column (myFert5a) with
#myFert5 coverted to numbers
#5=selfing
#4=normally selfing
#3=mixed
#2=normally cross
#1=outcrossing

library(plyr)

flora$myFert5a <- revalue(flora$myFert5, 
                    c("selfing"=5, 
                      "normally self"=4,
                      "mixed"=3,
                      "normally cross"=2,
                      "outcrossing"=1))

table(flora$myFert5)
table(flora$myFert5a)

print(class(flora$myFert5a))

#Inserting a new column with "myFert5a" numbers as numerical data

flora$myFertNum <- as.numeric (flora$myFert5a)

#Checks

class(flora$myFertNum)

class(flora$myPlantAtRange)

summary(flora$myFertNum)

summary(flora$myPlantAtRange)

#Selfing-Range Regression
#selfing as response (y), range as explanatory (x)

Fert_Range_lm <- lm(flora$myFertNum ~ flora$myPlantAtRange)
summary(Fert_Range_lm)

#Plotting selfing against range

plot(x=flora$myPlantAtRange, y=flora$myFertNum)

