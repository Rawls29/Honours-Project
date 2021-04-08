rm(list=ls())
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
load(file = "Non_Endemic_Natives.Rda")
Flora <- Non_Endemic_Natives

#araceae
ar_self <- mean(Flora$myPlantAtRange[which(Flora$family=="araceae"&
                                                  Flora$myFertGen=="generally self")],
                     na.rm=TRUE)
ar_cross <- mean(Flora$myPlantAtRange[which(Flora$family=="araceae"&
                                                   Flora$myFertGen=="generally cross")],
                      na.rm=TRUE)
ar_diff= ar_self-ar_cross
#asparagaceae
asparag_self <- mean(Flora$myPlantAtRange[which(Flora$family=="asparagaceae"&
                                     Flora$myFertGen=="generally self")],
                 na.rm=TRUE)
asparag_cross <- mean(Flora$myPlantAtRange[which(Flora$family=="asparagaceae"&
                                      Flora$myFertGen=="generally cross")],
                  na.rm=TRUE)
asparag_diff= asparag_self-asparag_cross
#asteraceae
aster_self <- mean(Flora$myPlantAtRange[which(Flora$family=="asteraceae"&
                                       Flora$myFertGen=="generally self")],
                   na.rm=TRUE)
aster_cross <- mean(Flora$myPlantAtRange[which(Flora$family=="asteraceae"&
                                        Flora$myFertGen=="generally cross")],
                    na.rm=TRUE)
aster_diff= aster_self-aster_cross
#brassicaceae
brassic_self <- mean(Flora$myPlantAtRange[which(Flora$family=="brassicaceae"&
                                                     Flora$myFertGen=="generally self")],
                        na.rm=TRUE)
brassic_cross <- mean(Flora$myPlantAtRange[which(Flora$family=="brassicaceae"&
                                                      Flora$myFertGen=="generally cross")],
                         na.rm=TRUE)
brassic_diff= brassic_self-brassic_cross
#caryophyllaceae
caryophyll_self <- mean(Flora$myPlantAtRange[which(Flora$family=="caryophyllaceae"&
                                            Flora$myFertGen=="generally self")],
                        na.rm=TRUE)
caryophyll_cross <- mean(Flora$myPlantAtRange[which(Flora$family=="caryophyllaceae"&
                                             Flora$myFertGen=="generally cross")],
                         na.rm=TRUE)
caryophyll_diff= caryophyll_self-caryophyll_cross
#crassulaceae
crassul_self <- mean(Flora$myPlantAtRange[which(Flora$family=="crassulaceae"&
                                              Flora$myFertGen=="generally self")],
                 na.rm=TRUE)
crassul_cross <- mean(Flora$myPlantAtRange[which(Flora$family=="crassulaceae"&
                                               Flora$myFertGen=="generally cross")],
                  na.rm=TRUE)
crassul_diff= crassul_self-crassul_cross
#fabaceae
fab_self <- mean(Flora$myPlantAtRange[which(Flora$family=="fabaceae"&
                                     Flora$myFertGen=="generally self")],
                 na.rm=TRUE)
fab_cross <- mean(Flora$myPlantAtRange[which(Flora$family=="fabaceae"&
                                      Flora$myFertGen=="generally cross")],
                  na.rm=TRUE)
fab_diff= fab_self-fab_cross
#juncaceae
junc_self <- mean(Flora$myPlantAtRange[which(Flora$family=="juncaceae"&
                                      Flora$myFertGen=="generally self")],
                  na.rm=TRUE)
junc_cross <- mean(Flora$myPlantAtRange[which(Flora$family=="juncaceae"&
                                       Flora$myFertGen=="generally cross")],
                   na.rm=TRUE)
junc_diff= junc_self-junc_cross
#lamiaceae
lami_self <- mean(Flora$myPlantAtRange[which(Flora$family=="lamiaceae"&
                                      Flora$myFertGen=="generally self")],
                  na.rm=TRUE)
lami_cross <- mean(Flora$myPlantAtRange[which(Flora$family=="lamiaceae"&
                                       Flora$myFertGen=="generally cross")],
                   na.rm=TRUE)
lami_diff= lami_self-lami_cross
#onagraceae
onagr_self <- mean(Flora$myPlantAtRange[which(Flora$family=="onagraceae"&
                                                 Flora$myFertGen=="generally self")],
                    na.rm=TRUE)
onagr_cross <- mean(Flora$myPlantAtRange[which(Flora$family=="onagraceae"&
                                                  Flora$myFertGen=="generally cross")],
                     na.rm=TRUE)
onagr_diff= onagr_self-onagr_cross
#orchidaceae
orchid_self <- mean(Flora$myPlantAtRange[which(Flora$family=="orchidaceae"&
                                        Flora$myFertGen=="generally self")],
                    na.rm=TRUE)
orchid_cross <- mean(Flora$myPlantAtRange[which(Flora$family=="orchidaceae"&
                                         Flora$myFertGen=="generally cross")],
                     na.rm=TRUE)
orchid_diff= orchid_self-orchid_cross
#orobanchaceae
orobanch_self <- mean(Flora$myPlantAtRange[which(Flora$family=="orobanchaceae"&
                                          Flora$myFertGen=="generally self")],
                      na.rm=TRUE)
orobanch_cross <- mean(Flora$myPlantAtRange[which(Flora$family=="orobanchaceae"&
                                           Flora$myFertGen=="generally cross")],
                       na.rm=TRUE)
orobanch_diff= orobanch_self-orobanch_cross
#plantaginaceae
plantagin_self <- mean(Flora$myPlantAtRange[which(Flora$family=="plantaginaceae"&
                                           Flora$myFertGen=="generally self")],
                       na.rm=TRUE)
plantagin_cross <- mean(Flora$myPlantAtRange[which(Flora$family=="plantaginaceae"&
                                            Flora$myFertGen=="generally cross")],
                        na.rm=TRUE)
plantagin_diff= plantagin_self-plantagin_cross
#poaceae
po_self <- mean(Flora$myPlantAtRange[which(Flora$family=="poaceae"&
                                    Flora$myFertGen=="generally self")],
                na.rm=TRUE)
po_cross <- mean(Flora$myPlantAtRange[which(Flora$family=="poaceae"&
                                     Flora$myFertGen=="generally cross")],
                 na.rm=TRUE)
po_diff= po_self-po_cross
#polygonaceae
polygon_self <- mean(Flora$myPlantAtRange[which(Flora$family=="polygonaceae"&
                                         Flora$myFertGen=="generally self")],
                     na.rm=TRUE)
polygon_cross <- mean(Flora$myPlantAtRange[which(Flora$family=="polygonaceae"&
                                          Flora$myFertGen=="generally cross")],
                      na.rm=TRUE)
polygon_diff= polygon_self-polygon_cross
#primulaceae
primul_self <- mean(Flora$myPlantAtRange[which(Flora$family=="primulaceae"&
                                        Flora$myFertGen=="generally self")],
                    na.rm=TRUE)
primul_cross <- mean(Flora$myPlantAtRange[which(Flora$family=="primulaceae"&
                                         Flora$myFertGen=="generally cross")],
                     na.rm=TRUE)
primul_diff= primul_self-primul_cross
#ranunculaceae
ranuncul_self <- mean(Flora$myPlantAtRange[which(Flora$family=="ranunculaceae"&
                                          Flora$myFertGen=="generally self")],
                      na.rm=TRUE)
ranuncul_cross <- mean(Flora$myPlantAtRange[which(Flora$family=="ranunculaceae"&
                                           Flora$myFertGen=="generally cross")],
                       na.rm=TRUE)
ranuncul_diff= ranuncul_self-ranuncul_cross
#rosaceae
ros_self <- mean(Flora$myPlantAtRange[which(Flora$family=="rosaceae"&
                                     Flora$myFertGen=="generally self")],
                 na.rm=TRUE)
ros_cross <- mean(Flora$myPlantAtRange[which(Flora$family=="rosaceae"&
                                      Flora$myFertGen=="generally cross")],
                  na.rm=TRUE)
ros_diff= ros_self-ros_cross


difference_large <- c(ar_diff, asparag_diff, aster_diff,
                      brassic_diff, caryophyll_diff, crassul_diff,
                      fab_diff, junc_diff,
                      lami_diff, onagr_diff, orchid_diff,
                      orobanch_diff, plantagin_diff, po_diff,
                      polygon_diff, primul_diff, ranuncul_diff,
                      ros_diff)
family_large <- c("Araceae", "Asparagaceae", "Asteraceae",
                  "Brassicaceae", "Caryophyllaceae", "Crassulaceae",
                  "Fabaceae", "Juncaceae",
                  "Lamiaceae", "Onagraceae", "Orchidaceae",
                  "Orobanchaceae", "Plantaginaceae", "Poaceae",
                  "Polygonaceae", "Primulaceae", "Ranunculaceae",
                  "Rosaceae")
Diffs_large <- data.frame(family_large, difference_large)

barplot(Diffs_large$difference_large)
legend("topright",Diffs_large$family_large, fill=rainbow(27))

library(ggplot2)
dev.off()
ggplot(data=Diffs_large, aes(x=family_large, y=difference_large, 
                             fill=family_large)) +
  theme(axis.text.x = element_blank()) +
  geom_bar(stat = "identity") +
  xlab("") + ylab("Difference in Range Size")+
  ggtitle("Differences in Mean Range Size of Generally Selfing and Generally Crossing Species") +
  scale_fill_hue(name="Family")