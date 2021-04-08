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
No_Aquatics <- Range_Dataset[-c(73, 74, 109, 138, 146, 148, 167,
                                168, 193, 197, 275, 276, 321, 437,
                                442, 458, 465, 467, 521, 536, 538, 
                                550, 584, 605, 608, 615, 616, 617, 
                                618, 649, 650, 659, 695, 696, 697, 
                                698, 699, 733, 736, 738, 741, 740, 
                                743, 746, 747, 788, 834, 884, 885,
                                906, 936, 956, 986, 778, 779, 147,
                                607),]
#Alpines
No_Aquatics_Alpines <- Range_Dataset[-c(73, 74, 109, 138, 146, 148, 167,
                                        168, 193, 197, 275, 276, 321, 437,
                                        442, 458, 465, 467, 521, 536, 538, 
                                        550, 584, 605, 608, 615, 616, 617, 
                                        618, 649, 650, 659, 695, 696, 697, 
                                        698, 699, 733, 736, 738, 741, 740, 
                                        743, 746, 747, 788, 834, 884, 885,
                                        906, 936, 956, 986, 778, 779, 147,
                                        607,
                                        20, 23, 25, 28, 32, 37, 77, 84,
                                        85, 99, 115, 119, 143, 144, 170,
                                        171, 175, 179, 180, 185, 215, 220,
                                        247, 249, 253, 260, 268, 229, 307,
                                        314, 317, 323, 327, 328, 344, 347,
                                        365, 408, 416, 418, 431, 441, 461,
                                        497, 504, 533, 537, 556, 574, 586,
                                        588, 589, 595, 634, 639, 660, 668,
                                        677, 682, 687, 702, 704, 711, 525,
                                        727, 728, 755, 766, 783, 787, 797, 
                                        802, 804, 805, 806, 807, 803, 811,
                                        821, 822, 823, 826, 827, 828, 829,
                                        824, 830, 754, 706, 856, 882, 921,
                                        924, 933, 940, 638, 941, 942, 955,
                                        960, 978, 79, 444, 705, 585, 690,
                                        216
                                        ),]
#Coastals
No_A_A_Coastals <- Range_Dataset[-c(73, 74, 109, 138, 146, 148, 167,
                                    168, 193, 197, 275, 276, 321, 437,
                                    442, 458, 465, 467, 521, 536, 538, 
                                    550, 584, 605, 608, 615, 616, 617, 
                                    618, 649, 650, 659, 695, 696, 697, 
                                    698, 699, 733, 736, 738, 741, 740, 
                                    743, 746, 747, 788, 834, 884, 885,
                                    906, 936, 956, 986, 778, 779, 147,
                                    607,
                                    20, 23, 25, 28, 32, 37, 77, 84,
                                    85, 99, 115, 119, 143, 144, 170,
                                    171, 175, 179, 180, 185, 215, 220,
                                    247, 249, 253, 260, 268, 229, 307,
                                    314, 317, 323, 327, 328, 344, 347,
                                    365, 408, 416, 418, 431, 441, 461,
                                    497, 504, 533, 537, 556, 574, 586,
                                    588, 589, 595, 634, 639, 660, 668,
                                    677, 682, 687, 702, 704, 711, 525,
                                    727, 728, 755, 766, 783, 787, 797, 
                                    802, 804, 805, 806, 807, 803, 811,
                                    821, 822, 823, 826, 827, 828, 829,
                                    824, 830, 754, 706, 856, 882, 921,
                                    924, 933, 940, 638, 941, 942, 955,
                                    960, 978, 79, 444, 705, 585, 690,
                                    216,
                                    45, 46, 72, 87, 95, 98, 100, 102,
                                    104, 106, 128, 140, 169, 176, 181,
                                    209, 218, 274, 282, 283, 322, 348,
                                    351, 358, 379, 411, 434, 435, 450,
                                    462, 515, 528, 529, 540, 547, 564,
                                    567, 587, 630, 672, 691, 720, 721, 
                                    722, 784, 789, 790, 791, 792, 793,
                                    794, 795, 814, 90, 862, 887, 888,
                                    891, 905, 904, 47, 925, 927, 930,
                                    50, 565, 934, 983, 591, 93, 118,
                                    261, 425, 103, 712, 262, 259),]
#Non-natives
Native_No_A_A_c <- No_A_A_Coastals[-c(which(No_A_A_Coastals$Status=="naturalised")),]
Reduced_Range_Dataset <- Native_No_A_A_c
save(Reduced_Range_Dataset, file = "Reduced_Range_Dataset.Rda")

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
#p>0.05 so variances are homogenus

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
#p<0.05 so sig. diff. in medians

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
summary(model2)
#log(range)
model3 <- glm(log(Native_No_A_A_c$myPlantAtRange)~Native_No_A_A_c$myFertGen,
              family = gaussian())
plot(model3)
#sqrt(arcsin(x))
model4 <- glm(sqrt(asin(Native_No_A_A_c$myPlantAtRange))~Native_No_A_A_c$myFertGen,
              family = gaussian())
plot(model4)
#Doesn't work

#GLM with rarity?
model4<- glm(Native_No_A_A_c$myPlantAtRange~Native_No_A_A_c$myFertGen*Native_No_A_A_c$myLocalRarity,
             family = quasipoisson())
plot(model4)
summary(model4)

Coastals <- Range_Dataset[c(73, 74, 111, 140, 148, 150, 169, 
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
hist(Coastals$myPlantAtRange)
hist(log(Coastals$myPlantAtRange))
coastals_model <- glm(Coastals$myPlantAtRange~Coastals$myFertGen,
              family = quasipoisson())
coastals_model2 <- glm(log(Coastals$myPlantAtRange)~Coastals$myFertGen,
                      family = quasipoisson())
par(mfrow=c(2,2))
plot(coastals_model)
plot(coastals_model2)
summary(coastals_model)

library(ggplot2)
range_plot <-  ggplot(Native_No_A_A_c, aes(x=myFertGen, y=myPlantAtRange, 
                                           fill=myFertGen))+
  geom_boxplot()+
  geom_jitter()+
  facet_wrap(~myPlantAtPern1)
range_plot2 <-  ggplot(Native_No_A_A_c, aes(x=myFertGen, y=myPlantAtRange, 
                                            fill=myFertGen))+
  geom_boxplot()+
  geom_jitter()+
  facet_wrap(~myPlantAtPern2)

#Analysis of annuals alone
Annuals <- Native_No_A_A_c[c(which(Native_No_A_A_c$myPlantAtPern1=="a")),]
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
save(Annuals, file = "Annuals.Rda")
hist(Annuals$myPlantAtRange)
hist(log(Annuals$myPlantAtRange))
shapiro.test(log(Annuals$myPlantAtRange)) #non-normal
library(car)
leveneTest(myPlantAtRange~myFertGen, data=Annuals)#p>0.05 so variances homogenous
kruskal.test(myPlantAtRange~myFertGen, data=Annuals) #p>0.05 so no sig. diff. in medians
library(beeswarm)
beeswarm(myPlantAtRange~myFertGen, data=Annuals)
boxplot(myPlantAtRange~myFertGen, data=Annuals, add=T, 
        col="#0000ff22")

#Analysis of perennials alone
Perennials <- Native_No_A_A_c[-c(which(Native_No_A_A_c$myPlantAtPern1=="a")),]
hist(Perennials$myPlantAtRange)
hist(log(Perennials$myPlantAtRange))
shapiro.test(log((Perennials$myPlantAtRange)^2)) #non-normal
library(car)
leveneTest(myPlantAtRange~myFertGen, data=Perennials)#p<0.05 so variances aren't homogenous
leveneTest(log(myPlantAtRange)~myFertGen, data=Perennials) #p>0.05 so variances homogenous
kruskal.test(myPlantAtRange~myFertGen, data=Perennials) #p<0.05 so sig. diff. in medians
pairwise.wilcox.test(Perennials$myPlantAtRange, 
                     Perennials$myFertGen, 
                     p.adjust.method = "BH")
library(beeswarm)
beeswarm(log(myPlantAtRange)~myFertGen, data=Perennials)
boxplot(log(myPlantAtRange)~myFertGen, data=Perennials, add=T, 
        col="#0000ff22")

#Perennials without Phanerophytes
Perennials_NoPh <- Perennials[-c(which(Perennials$myPlantAtLife1=="Ph")),]
hist(Perennials_NoPh$myPlantAtRange)
hist(log(Perennials_NoPh$myPlantAtRange))
shapiro.test(log(Perennials_NoPh$myPlantAtRange))#non-normal
leveneTest(log(myPlantAtRange)~myFertGen, data=Perennials_NoPh)#homogenous variances
kruskal.test(log(myPlantAtRange)~myFertGen, data=Perennials_NoPh)
#no sig. diff. between means

library(beeswarm)
beeswarm(log(myPlantAtRange)~myFertGen, data=Perennials_NoPh)
boxplot(log(myPlantAtRange)~myFertGen, data=Perennials_NoPh, add=T, 
        col="#0000ff22")
#Smaller range size maintained

#Range Size~Life History
kruskal.test(log(myPlantAtRange)~myPlantAtPern1, data=Native_No_A_A_c)
pairwise.wilcox.test(log(Native_No_A_A_c$myPlantAtRange), 
                     Native_No_A_A_c$myPlantAtPern1, 
                     p.adjust.method = "BH")
library(beeswarm)
beeswarm(log(myPlantAtRange)~myPlantAtPern1, data=Native_No_A_A_c)
boxplot(log(myPlantAtRange)~myPlantAtPern1, data=Native_No_A_A_c, add=T, 
        col="#0000ff22")

Range_Fert_History_model <- glm(Native_No_A_A_c$myPlantAtRange~Native_No_A_A_c$myFertGen+Native_No_A_A_c$myPlantAtPern1+Native_No_A_A_c$myFertGen*Native_No_A_A_c$myPlantAtPern1,
              family = quasipoisson())
par(mfrow=c(2,2))
plot(Range_Fert_History_model)
#Not homogenous variances, maybe combine b+p?
library(plyr)
Native_No_A_A_c$annual <- revalue(Native_No_A_A_c$myPlantAtPern1, 
                                  c("a"="Yes", 
                                    "b"="No",
                                    "p"="No"))
kruskal.test(log(myPlantAtRange)~annual, data=Native_No_A_A_c)
pairwise.wilcox.test(log(Native_No_A_A_c$myPlantAtRange), 
                     Native_No_A_A_c$annual, 
                     p.adjust.method = "BH")

Range_Fert_History_model2 <- glm(Native_No_A_A_c$myPlantAtRange~Native_No_A_A_c$myFertGen+Native_No_A_A_c$annual+Native_No_A_A_c$myFertGen*Native_No_A_A_c$annual,
                                family = quasipoisson())
par(mfrow=c(2,2))
plot(Range_Fert_History_model2)
summary(Range_Fert_History_model2)

with(Native_No_A_A_c, table(myFertGen, myPlantAtPern1))
with(Native_No_A_A_c, table(myFertGen, annual))

with(Native_No_A_A_c, table(myPlantAtLife1, myPlantAtPern1))
with(Native_No_A_A_c, table(myPlantAtLife1, annual))

with(Annuals, table(myPlantAtLife1, myFertGen))
with(Perennials, table(myPlantAtLife1, myFertGen))

library(car)
#Aquatics
Aquatics <- Range_Dataset[c(73, 74, 109, 138, 146, 148, 167,
                                168, 193, 197, 275, 276, 321, 437,
                                442, 458, 465, 467, 521, 536, 538, 
                                550, 584, 605, 608, 615, 616, 617, 
                                618, 649, 650, 659, 695, 696, 697, 
                                698, 699, 733, 736, 738, 741, 740, 
                                743, 746, 747, 788, 834, 884, 885,
                                906, 936, 956, 986, 778, 779, 147,
                                60,7),]

setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
save(Aquatics, file = "Aquatics.Rda")
shapiro.test(log(Aquatics$myPlantAtRange))#non-normal
leveneTest(myPlantAtRange~myFertGen, data=Aquatics)#homogenous variances
kruskal.test(myPlantAtRange~myFertGen, data=Aquatics)
#sig. diff. between means
pairwise.wilcox.test(Aquatics$myPlantAtRange, 
                     Aquatics$myFertGen, 
                     p.adjust.method = "BH")
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
save(Aquatics, file = "Aquatics.Rda")
#Diff between gen. self and gen. cross
library(beeswarm)
beeswarm(myPlantAtRange~myFertGen, data=Aquatics)
boxplot(myPlantAtRange~myFertGen, data=Aquatics, add=T, 
        col="#0000ff22")
#Coastals
Coastal <- Range_Dataset[c(73, 74, 111, 140, 148, 150, 169, 
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
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
save(Coastal, file = "Coastal.Rda")
shapiro.test(log(Coastal$myPlantAtRange))#non-normal
leveneTest(log(myPlantAtRange)~myFertGen, data=Coastal)#homogenous variances
kruskal.test(log(myPlantAtRange)~myFertGen, data=Coastal)
#no sig. diff. between means
library(beeswarm)
beeswarm(log(myPlantAtRange)~myFertGen, data=Coastal)
boxplot(log(myPlantAtRange)~myFertGen, data=Coastal, add=T, 
        col="#0000ff22")
#Montanes
Alpines <- Range_Dataset[c(20, 23, 25, 28, 32, 37, 77, 84,
                                        85, 99, 115, 119, 143, 144, 170,
                                        171, 175, 179, 180, 185, 215, 220,
                                        247, 249, 253, 260, 268, 229, 307,
                                        314, 317, 323, 327, 328, 344, 347,
                                        365, 408, 416, 418, 431, 441, 461,
                                        497, 504, 533, 537, 556, 574, 586,
                                        588, 589, 595, 634, 639, 660, 668,
                                        677, 682, 687, 702, 704, 711, 525,
                                        727, 728, 755, 766, 783, 787, 797, 
                                        802, 804, 805, 806, 807, 803, 811,
                                        821, 822, 823, 826, 827, 828, 829,
                                        824, 830, 754, 706, 856, 882, 921,
                                        924, 933, 940, 638, 941, 942, 955,
                                        960, 978, 79, 444, 705, 585, 690,
                                        216),]
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
save(Alpines, file = "Alpines.Rda")
shapiro.test(log(Alpines$myPlantAtRange))#non-normal
leveneTest(myPlantAtRange~myFertGen, data=Alpines)#non-homogenous variances
#Not sure I can do a KW if variances are non-homogeneous
library(beeswarm)
beeswarm(myPlantAtRange~myFertGen, data=Alpines)
boxplot(myPlantAtRange~myFertGen, data=Alpines, add=T, 
        col="#0000ff22")
bc<-boxcox(Alpines$myPlantAtRange~Alpines$myFertGen)
(lambda <- bc$x[which.max(bc$y)])
shapiro.test(((Alpines$myPlantAtRange^lambda-1)/lambda)) #P>0.05 so normal
leveneTest(((Alpines$myPlantAtRange^lambda-1)/lambda)~myFertGen, data=Alpines) #p>0.05 so homogenous
kruskal.test(((Alpines$myPlantAtRange^lambda-1)/lambda)~myFertGen, data=Alpines) #p>0.05 so non sig
library(beeswarm)
beeswarm(((Alpines$myPlantAtRange^lambda-1)/lambda)~myFertGen, data=Alpines)
boxplot(((Alpines$myPlantAtRange^lambda-1)/lambda)~myFertGen, data=Alpines, add=T, 
        col="#0000ff22")
#Non-Natives
Non_Native <- No_A_A_Coastals[c(which(No_A_A_Coastals$Status=="naturalised")),]
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
save(Non_Native, file = "Non_Native.Rda")
shapiro.test(log(Non_Native$myPlantAtRange))#Non-normal
leveneTest(log(myPlantAtRange)~myFertGen, data=Non_Native)#non-homogenous variances
#Not sure I can do a KW if variances are non-homogeneous
library(beeswarm)
beeswarm(myPlantAtRange~myFertGen, data=Non_Native)
boxplot(myPlantAtRange~myFertGen, data=Non_Native, add=T, 
        col="#0000ff22")
bc<-boxcox(Non_Native$myPlantAtRange~Non_Native$myFertGen)
(lambda <- bc$x[which.max(bc$y)])
shapiro.test(((Non_Native$myPlantAtRange^lambda-1)/lambda)) #p>0.5 so normal
leveneTest(((Non_Native$myPlantAtRange^lambda-1)/lambda)~myFertGen, data=Non_Native) #p>0.05 so homogenous
kruskal.test(((Non_Native$myPlantAtRange^lambda-1)/lambda)~myFertGen, data=Non_Native) #p>0.05 so non sig
library(beeswarm)
beeswarm(((Non_Native$myPlantAtRange^lambda-1)/lambda)~myFertGen, data=Non_Native)
boxplot(((Non_Native$myPlantAtRange^lambda-1)/lambda)~myFertGen, data=Non_Native, add=T, 
        col="#0000ff22")

#Removing the 3 endemics from natives
No_Endemic_1 <- Perennials[-c(which(Perennials$species=="sorbus_devoniensis")),]
No_Endemics_2 <- No_Endemic_1[-c(which(No_Endemic_1$species=="sorbus_porrigentiformis")),]
No_Endemics <- No_Endemics_2[-c(which(No_Endemics_2$species=="sorbus_arranensis")),]
shapiro.test(log(No_Endemics$myPlantAtRange)) #non-normal
library(MASS)
bc<-boxcox(No_Endemics$myPlantAtRange~No_Endemics$myFertGen)
(lambda <- bc$x[which.max(bc$y)])
shapiro.test(((No_Endemics$myPlantAtRange^lambda-1)/lambda))#non-normal
library(car)
leveneTest(myPlantAtRange~myFertGen, data=No_Endemics) #hetero
leveneTest((No_Endemics$myPlantAtRange)^1/2~myFertGen, data=No_Endemics) #hetero
leveneTest(log(No_Endemics$myPlantAtRange)~myFertGen, data=No_Endemics) #homo
kruskal.test(log(myPlantAtRange)~myFertGen, data=No_Endemics) #p<0.05
pairwise.wilcox.test(log(No_Endemics$myPlantAtRange), 
                     No_Endemics$myFertGen, 
                     p.adjust.method = "BH")
#Diff between gen. cross & gen. self, gen. cross & mixed
library(beeswarm)
beeswarm(myPlantAtRange~myFertGen, data=No_Endemics)
boxplot(myPlantAtRange~myFertGen, data=No_Endemics, add=T, 
        col="#0000ff22")
Perennials_NoPh <- No_Endemics[-c(which(Perennials$myPlantAtLife1=="Ph")),]
hist(Perennials_NoPh$myPlantAtRange)
hist(log(Perennials_NoPh$myPlantAtRange))
shapiro.test(log(Perennials_NoPh$myPlantAtRange))#non-normal
leveneTest(log(myPlantAtRange)~myFertGen, data=Perennials_NoPh)#homogenous variances
kruskal.test(log(myPlantAtRange)~myFertGen, data=Perennials_NoPh)
#no sig. diff. between means
library(beeswarm)
beeswarm(log(myPlantAtRange)~myFertGen, data=Perennials_NoPh)
boxplot(log(myPlantAtRange)~myFertGen, data=Perennials_NoPh, add=T, 
        col="#0000ff22")

#Perennial PH
Perennials_Ph <- No_Endemics[c(which(Perennials$myPlantAtLife1=="Ph")),]
hist(Perennials_Ph$myPlantAtRange)
hist(log(Perennials_Ph$myPlantAtRange))
shapiro.test(log(Perennials_Ph$myPlantAtRange))#non-normal
library(car)
leveneTest(log(myPlantAtRange)~myFertGen, data=Perennials_Ph)#homogenous
kruskal.test(log(myPlantAtRange)~myFertGen, data=Perennials_Ph)
#sig. diff. between means
pairwise.wilcox.test(log(Perennials_Ph$myPlantAtRange), 
                     Perennials_Ph$myFertGen, 
                     p.adjust.method = "BH")
#sig diff between crossxself and mixedxself
library(beeswarm)
beeswarm(log(myPlantAtRange)~myFertGen, data=Perennials_Ph)
boxplot(log(myPlantAtRange)~myFertGen, data=Perennials_Ph, add=T, 
        col="#0000ff22")


Non_Endemic_Natives <- No_Endemics
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
save(Non_Endemic_Natives, file = "Non_Endemic_Natives.Rda")
#Perennials without Phanerophytes
library(writexl)
write_xlsx(Non_Endemic_Natives, 'Non_Endemic_Natives.xlsx')