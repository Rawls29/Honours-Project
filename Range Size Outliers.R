rm(list=ls())
#Loading my cleaned dataset
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
load(file = "Range_Dataset.Rda")

Range_Dataset$Status[60] <- "naturalised"
Range_Dataset$Status[189] <- "native"
Range_Dataset$Status[519] <- "naturalised"
Range_Dataset$Status[973] <- "naturalised"
Range_Dataset$Status[which(Range_Dataset$Status=="native, native")] <- "native"

#Removing potential outliers
#Aquatics
No_Aquatics <- Range_Dataset[-c(73, 74, 111, 140, 148, 150, 169, 170,
                               195, 199, 277, 278, 323, 440, 445, 461, 
                               468, 470, 524, 539, 541, 553, 587, 608,
                               611, 618, 619, 620, 621, 652, 653, 662, 
                               698, 699, 700, 701, 702, 736, 739, 741,
                               743, 744, 746, 748, 749, 762, 790, 836, 
                               886, 887, 908, 938, 957, 986, 780, 781,
                               149, 610),]
#Alpines
No_Aquatics_Alpines <- Range_Dataset[-c(73, 74, 111, 140, 148, 150, 169, 
                                       170, 195, 199, 277, 278, 323, 440,
                                       445, 461, 468, 470, 524, 539, 541, 
                                       553, 587, 608, 611, 618, 619, 620, 
                                       621, 652, 653, 662, 698, 699, 700, 
                                       701, 702, 736, 739, 741, 743, 744, 
                                       746, 748, 749, 762, 790, 836, 886, 
                                       887, 908, 938, 957, 986, 780, 781,
                                       149, 610, 20, 23, 25, 28, 32, 37,
                                       77, 84, 85, 100, 101, 117, 121, 
                                       145, 146, 172, 173, 177, 181, 182, 
                                       187, 217, 222, 231, 249, 251, 255,
                                       262, 270, 309, 316, 319, 325, 329,
                                       330, 346, 349, 367, 410, 418, 420,
                                       433, 444, 464, 500, 507, 528, 536,
                                       540, 559, 577, 589, 591, 592, 598,
                                       637, 641, 642, 663, 671, 680, 685, 
                                       690, 705, 707, 709, 714, 730, 731, 
                                       756, 757, 768, 785, 789, 804, 805,
                                       806, 807, 808, 809, 813, 823, 824, 
                                       825, 826, 828, 829, 830, 831, 832,
                                       858, 884, 925, 935, 941, 942, 943,
                                       956, 961, 979, 79, 447, 708, 588,
                                       693, 218),]
#Coastals
No_A_A_Coastals <- Range_Dataset[-c(73, 74, 111, 140, 148, 150, 169, 
                                   170, 195, 199, 277, 278, 323, 440,
                                   445, 461, 468, 470, 524, 539, 541, 
                                   553, 587, 608, 611, 618, 619, 620, 
                                   621, 652, 653, 662, 698, 699, 700, 
                                   701, 702, 736, 739, 741, 743, 744, 
                                   746, 748, 749, 762, 790, 836, 886, 
                                   887, 908, 938, 957, 986, 780, 781,
                                   149, 610, 20, 23, 25, 28, 32, 37,
                                   77, 84, 85, 100, 101, 117, 121, 
                                   145, 146, 172, 173, 177, 181, 182, 
                                   187, 217, 222, 231, 249, 251, 255,
                                   262, 270, 309, 316, 319, 325, 329,
                                   330, 346, 349, 367, 410, 418, 420,
                                   433, 444, 464, 500, 507, 528, 536,
                                   540, 559, 577, 589, 591, 592, 598,
                                   637, 641, 642, 663, 671, 680, 685, 
                                   690, 705, 707, 709, 714, 730, 731, 
                                   756, 757, 768, 785, 789, 804, 805,
                                   806, 807, 808, 809, 813, 823, 824, 
                                   825, 826, 828, 829, 830, 831, 832,
                                   858, 884, 925, 935, 941, 942, 943,
                                   956, 961, 979, 79, 447, 708, 588,
                                   693, 218, 45, 46, 47, 50, 88, 91,
                                   99, 102, 104, 106, 108, 130, 142, 
                                   171, 178, 183, 211, 220, 276, 284,
                                   285, 324, 350, 353, 360, 381, 413, 
                                   437, 438, 453, 465, 518, 531, 532,
                                   543, 548, 550, 567, 568, 570, 590, 
                                   633, 675, 694, 723, 724, 725, 786,
                                   791, 792, 793, 794, 795, 796, 799,
                                   816, 864, 899, 890, 893, 906, 907,
                                   926, 928, 931, 936, 983, 594, 94,
                                   120, 263, 427, 105, 264, 261, 715, 
                                   72, 96),]
#Non-natives
Native_No_A_A_c <- No_A_A_Coastals[-c(which(No_A_A_Coastals$Status=="naturalised")),]

shapiro.test(log(No_Aquatics$myPlantAtRange))
shapiro.test(log(No_Aquatics_Alpines$myPlantAtRange))
shapiro.test(log(No_A_A_Coastals$myPlantAtRange))
shapiro.test(log(Native_No_A_A_c$myPlantAtRange))
#None are normally distributed -> not going to work in a basic LM

library(car)
leveneTest(log(myPlantAtRange)~myFertGen, data=No_Aquatics)
leveneTest(log(myPlantAtRange)~myFertGen, data=No_Aquatics_Alpines)
leveneTest(log(myPlantAtRange)~myFertGen, data=No_A_A_Coastals)
leveneTest(log(myPlantAtRange)~myFertGen, data=Native_No_A_A_c)

kruskal.test(log(myPlantAtRange)~myFertGen, data=No_Aquatics)
pairwise.wilcox.test(log(No_Aquatics$myPlantAtRange), 
                     No_Aquatics$myFertGen, 
                     p.adjust.method = "BH")

kruskal.test(log(myPlantAtRange)~myFertGen, data=No_Aquatics_Alpines)
pairwise.wilcox.test(log(No_Aquatics_Alpines$myPlantAtRange), 
                     No_Aquatics_Alpines$myFertGen, 
                     p.adjust.method = "BH")

kruskal.test(log(myPlantAtRange)~myFertGen, data=No_A_A_Coastals)
pairwise.wilcox.test(log(No_A_A_Coastals$myPlantAtRange), 
                     No_A_A_Coastals$myFertGen, 
                     p.adjust.method = "BH")

kruskal.test(log(myPlantAtRange)~myFertGen, data=Native_No_A_A_c)
pairwise.wilcox.test(log(Native_No_A_A_c$myPlantAtRange), 
                     Native_No_A_A_c$myFertGen, 
                     p.adjust.method = "BH")

library(beeswarm)
beeswarm(log(myPlantAtRange)~myFertGen, data=No_Aquatics)
boxplot(log(myPlantAtRange)~myFertGen, data=No_Aquatics, add=T, 
        col="#0000ff22")
beeswarm(log(myPlantAtRange)~myFertGen, data=No_Aquatics_Alpines)
boxplot(log(myPlantAtRange)~myFertGen, data=No_Aquatics_Alpines, add=T, 
        col="#0000ff22")
beeswarm(log(myPlantAtRange)~myFertGen, data=No_A_A_Coastals)
boxplot(log(myPlantAtRange)~myFertGen, data=No_A_A_Coastals, add=T, 
        col="#0000ff22")
beeswarm(log(myPlantAtRange)~myFertGen, data=Native_No_A_A_c)
boxplot(log(myPlantAtRange)~myFertGen, data=Native_No_A_A_c, add=T, 
        col="#0000ff22")

hist(No_Aquatics$myPlantAtRange)
hist(No_Aquatics_Alpines$myPlantAtRange)
hist(No_A_A_Coastals$myPlantAtRange)
hist(Native_No_A_A_c$myPlantAtRange)

hist(log(No_Aquatics$myPlantAtRange))
hist(log(No_Aquatics_Alpines$myPlantAtRange))
hist(log(No_A_A_Coastals$myPlantAtRange))
hist(log(Native_No_A_A_c$myPlantAtRange))

#Basic GLM
par(mfrow=c(2,2))
model <- glm(Native_No_A_A_c$myPlantAtRange~Native_No_A_A_c$myFertGen,
             family = poisson())
plot(model)
#Quasipoisson
model2 <- glm(Native_No_A_A_c$myPlantAtRange~Native_No_A_A_c$myFertGen,
             family = quasipoisson())
plot(model2)
#log(range)
model3 <- glm(log(Native_No_A_A_c$myPlantAtRange)~Native_No_A_A_c$myFertGen,
              family = gaussian())
plot(model3)