rm(list=ls())
#Loading my cleaned dataset
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
load(file = "Small_Flora.Rda")
Flora <- Small_Flora

table(Flora$family)
#asteraceae
aster_self <- mean(Flora$Range[which(Flora$family=="asteraceae"&
                                   Flora$FertGen=="generally self")],
                    na.rm=TRUE)
aster_cross <- mean(Flora$Range[which(Flora$family=="asteraceae"&
                                        Flora$FertGen=="generally cross")],
                    na.rm=TRUE)
aster_diff= aster_self-aster_cross
#poaceae
po_self <- mean(Flora$Range[which(Flora$family=="poaceae"&
                                       Flora$FertGen=="generally self")],
                   na.rm=TRUE)
po_cross <- mean(Flora$Range[which(Flora$family=="poaceae"&
                                        Flora$FertGen=="generally cross")],
                    na.rm=TRUE)
po_diff= po_self-po_cross
#rosaceae
ros_self <- mean(Flora$Range[which(Flora$family=="rosaceae"&
                                    Flora$FertGen=="generally self")],
                na.rm=TRUE)
ros_cross <- mean(Flora$Range[which(Flora$family=="rosaceae"&
                                     Flora$FertGen=="generally cross")],
                 na.rm=TRUE)
ros_diff= ros_self-ros_cross
#fabaceae
fab_self <- mean(Flora$Range[which(Flora$family=="fabaceae"&
                                     Flora$FertGen=="generally self")],
                 na.rm=TRUE)
fab_cross <- mean(Flora$Range[which(Flora$family=="fabaceae"&
                                      Flora$FertGen=="generally cross")],
                  na.rm=TRUE)
fab_diff= fab_self-fab_cross
#brassicaceae
brassic_self <- mean(Flora$Range[which(Flora$family=="brassicaceae"&
                                     Flora$FertGen=="generally self")],
                 na.rm=TRUE)
brassic_cross <- mean(Flora$Range[which(Flora$family=="brassicaceae"&
                                      Flora$FertGen=="generally cross")],
                  na.rm=TRUE)
brassic_diff= brassic_self-brassic_cross
#caryophyllaceae
caryophyll_self <- mean(Flora$Range[which(Flora$family=="caryophyllaceae"&
                                         Flora$FertGen=="generally self")],
                     na.rm=TRUE)
caryophyll_cross <- mean(Flora$Range[which(Flora$family=="caryophyllaceae"&
                                          Flora$FertGen=="generally cross")],
                      na.rm=TRUE)
caryophyll_diff= caryophyll_self-caryophyll_cross
#plantaginaceae
plantagin_self <- mean(Flora$Range[which(Flora$family=="plantaginaceae"&
                                            Flora$FertGen=="generally self")],
                        na.rm=TRUE)
plantagin_cross <- mean(Flora$Range[which(Flora$family=="plantaginaceae"&
                                             Flora$FertGen=="generally cross")],
                         na.rm=TRUE)
plantagin_diff= plantagin_self-plantagin_cross
#apiaceae
api_self <- mean(Flora$Range[which(Flora$family=="apiaceae"&
                                           Flora$FertGen=="generally self")],
                       na.rm=TRUE)
api_cross <- mean(Flora$Range[which(Flora$family=="apiaceae"&
                                            Flora$FertGen=="generally cross")],
                        na.rm=TRUE)
api_diff= api_self-api_cross
#amaranthaceae
amaranth_self <- mean(Flora$Range[which(Flora$family=="amaranthaceae"&
                                     Flora$FertGen=="generally self")],
                 na.rm=TRUE)
amaranth_cross <- mean(Flora$Range[which(Flora$family=="amaranthaceae"&
                                      Flora$FertGen=="generally cross")],
                  na.rm=TRUE)
amaranth_diff= amaranth_self-amaranth_cross
#polygonaceae
polygon_self <- mean(Flora$Range[which(Flora$family=="polygonaceae"&
                                          Flora$FertGen=="generally self")],
                      na.rm=TRUE)
polygon_cross <- mean(Flora$Range[which(Flora$family=="polygonaceae"&
                                           Flora$FertGen=="generally cross")],
                       na.rm=TRUE)
polygon_diff= polygon_self-polygon_cross
#ranunculaceae
ranuncul_self <- mean(Flora$Range[which(Flora$family=="ranunculaceae"&
                                         Flora$FertGen=="generally self")],
                     na.rm=TRUE)
ranuncul_cross <- mean(Flora$Range[which(Flora$family=="ranunculaceae"&
                                          Flora$FertGen=="generally cross")],
                      na.rm=TRUE)
ranuncul_diff= ranuncul_self-ranuncul_cross
#onagraceae
onagrac_self <- mean(Flora$Range[which(Flora$family=="onagraceae"&
                                          Flora$FertGen=="generally self")],
                      na.rm=TRUE)
onagrac_cross <- mean(Flora$Range[which(Flora$family=="onagraceae"&
                                           Flora$FertGen=="generally cross")],
                       na.rm=TRUE)
onagrac_diff= onagrac_self-onagrac_cross
#boraginaceae
boragin_self <- mean(Flora$Range[which(Flora$family=="boraginaceae"&
                                         Flora$FertGen=="generally self")],
                     na.rm=TRUE)
boragin_cross <- mean(Flora$Range[which(Flora$family=="boraginaceae"&
                                          Flora$FertGen=="generally cross")],
                      na.rm=TRUE)
boragin_diff= boragin_self-boragin_cross
#orchidaceae
orchid_self <- mean(Flora$Range[which(Flora$family=="onagraceae"&
                                         Flora$FertGen=="generally self")],
                     na.rm=TRUE)
orchid_cross <- mean(Flora$Range[which(Flora$family=="onagraceae"&
                                          Flora$FertGen=="generally cross")],
                      na.rm=TRUE)
orchid_diff= orchid_self-orchid_cross
#orobanchaceae
orobanch_self <- mean(Flora$Range[which(Flora$family=="orobanchaceae"&
                                         Flora$FertGen=="generally self")],
                     na.rm=TRUE)
orobanch_cross <- mean(Flora$Range[which(Flora$family=="orobanchaceae"&
                                          Flora$FertGen=="generally cross")],
                      na.rm=TRUE)
orobanch_diff= orobanch_self-orobanch_cross
#ericaceae
eric_self <- mean(Flora$Range[which(Flora$family=="ericaceae"&
                                         Flora$FertGen=="generally self")],
                     na.rm=TRUE)
eric_cross <- mean(Flora$Range[which(Flora$family=="ericaceae"&
                                          Flora$FertGen=="generally cross")],
                      na.rm=TRUE)
eric_diff= eric_self-eric_cross
#caprifoliaceae
caprifoli_self <- mean(Flora$Range[which(Flora$family=="caprifoliaceae"&
                                         Flora$FertGen=="generally self")],
                     na.rm=TRUE)
caprifoli_cross <- mean(Flora$Range[which(Flora$family=="caprifoliaceae"&
                                          Flora$FertGen=="generally cross")],
                      na.rm=TRUE)
caprifoli_diff= caprifoli_self-caprifoli_cross
#geraniaceae
gerani_self <- mean(Flora$Range[which(Flora$family=="geraniaceae"&
                                         Flora$FertGen=="generally self")],
                     na.rm=TRUE)
gerani_cross <- mean(Flora$Range[which(Flora$family=="geraniaceae"&
                                          Flora$FertGen=="generally cross")],
                      na.rm=TRUE)
gerani_diff= gerani_self-gerani_cross
#papaveraceae
papaver_self <- mean(Flora$Range[which(Flora$family=="papaveraceae"&
                                         Flora$FertGen=="generally self")],
                     na.rm=TRUE)
papaver_cross <- mean(Flora$Range[which(Flora$family=="papaveraceae"&
                                          Flora$FertGen=="generally cross")],
                      na.rm=TRUE)
papaver_diff= papaver_self-papaver_cross
#lamiaceae
lami_self <- mean(Flora$Range[which(Flora$family=="lamiaceae"&
                                         Flora$FertGen=="generally self")],
                     na.rm=TRUE)
lami_cross <- mean(Flora$Range[which(Flora$family=="lamiaceae"&
                                          Flora$FertGen=="generally cross")],
                      na.rm=TRUE)
lami_diff= lami_self-lami_cross
#juncaceae
junc_self <- mean(Flora$Range[which(Flora$family=="juncaceae"&
                                      Flora$FertGen=="generally self")],
                  na.rm=TRUE)
junc_cross <- mean(Flora$Range[which(Flora$family=="juncaceae"&
                                       Flora$FertGen=="generally cross")],
                   na.rm=TRUE)
junc_diff= junc_self-junc_cross
#primulaceae
primul_self <- mean(Flora$Range[which(Flora$family=="primulaceae"&
                                      Flora$FertGen=="generally self")],
                  na.rm=TRUE)
primul_cross <- mean(Flora$Range[which(Flora$family=="primulaceae"&
                                       Flora$FertGen=="generally cross")],
                   na.rm=TRUE)
primul_diff= primul_self-primul_cross
#gentianaceae
genti_self <- mean(Flora$Range[which(Flora$family=="gentianaceae"&
                                        Flora$FertGen=="generally self")],
                    na.rm=TRUE)
genti_cross <- mean(Flora$Range[which(Flora$family=="gentianaceae"&
                                         Flora$FertGen=="generally cross")],
                     na.rm=TRUE)
genti_diff= genti_self-genti_cross
#crassulaceae
crassul_self <- mean(Flora$Range[which(Flora$family=="crassulaceae"&
                                       Flora$FertGen=="generally self")],
                   na.rm=TRUE)
crassul_cross <- mean(Flora$Range[which(Flora$family=="crassulaceae"&
                                        Flora$FertGen=="generally cross")],
                    na.rm=TRUE)
crassul_diff= crassul_self-crassul_cross
#apocynaceae
apocyn_self <- mean(Flora$Range[which(Flora$family=="apocynaceae"&
                                         Flora$FertGen=="generally self")],
                     na.rm=TRUE)
apocyn_cross <- mean(Flora$Range[which(Flora$family=="apocynaceae"&
                                          Flora$FertGen=="generally cross")],
                      na.rm=TRUE)
apocyn_diff= apocyn_self-apocyn_cross
#potamogentonaceae
potamogenton_self <- mean(Flora$Range[which(Flora$family=="potamogentonaceae"&
                                        Flora$FertGen=="generally self")],
                    na.rm=TRUE)
potamogenton_cross <- mean(Flora$Range[which(Flora$family=="potamogentonaceae"&
                                         Flora$FertGen=="generally cross")],
                     na.rm=TRUE)
potamogenton_diff= potamogenton_self-potamogenton_cross
#cistaceae
cist_self <- mean(Flora$Range[which(Flora$family=="cistaceae"&
                                              Flora$FertGen=="generally self")],
                          na.rm=TRUE)
cist_cross <- mean(Flora$Range[which(Flora$family=="cistaceae"&
                                               Flora$FertGen=="generally cross")],
                           na.rm=TRUE)
cist_diff= cist_self-cist_cross

difference_small <- c(aster_diff, po_diff, ros_diff, fab_diff, brassic_diff, 
       caryophyll_diff, plantagin_diff)
family_small <- c("Asteraceae", "Poaceae", "Rosaceae", "Fabaceae", 
                  "Brassicaceae", "Caryophyllaceae", "Plantaginaceae")
Diffs_small <- data.frame(family_small, difference_small)

library(ggplot2)
dev.off()
ggplot(data=Diffs_small, aes(x=family_small, y=difference_small, 
                             fill=family_small)) +
  theme(axis.text.x = element_blank()) +
  geom_bar(stat = "identity") +
  xlab("") + ylab("Difference in Range Size")+
  ggtitle("Differences in Mean Range Size of Generally Selfing and Generally Crossing Species") +
  scale_fill_hue(name="Family")

difference_large <- c(aster_diff, po_diff, ros_diff, fab_diff, brassic_diff, 
                      caryophyll_diff, plantagin_diff, api_diff, amaranth_diff,
                      polygon_diff, ranuncul_diff, onagrac_diff, eric_diff, 
                      boragin_diff, orchid_diff, orobanch_diff, 
                      caprifoli_diff, 
                      gerani_diff, papaver_diff,  lami_diff, junc_diff, 
                      primul_diff, genti_diff, crassul_diff, apocyn_diff,
                      potamogenton_diff, cist_diff)
family_large <- c("Asteraceae", "Poaceae", "Rosaceae", "Fabaceae", 
                  "Brassicaceae", "Caryophyllaceae", "Plantaginaceae", 
                  "Apiaceae", "Amaranthaceae", "Polygonaceae", "Ranunculaceae",
                  "Onagraceae", "Ericaceae", "Boraginaceae", "Orchidaceae",
                  "Orobanchaceae", "Caprifoliaceae", "Geraniaceae",
                  "Papaveraceae", "Lamiaceae", "Juncaceae", "Primulaceae",
                  "Gentianaceae", "Crassulaceae", "Apocynaceae", 
                  "Potamogentonaceae", "Cistaceae")
Diffs_large <- data.frame(family_large, difference_large)

barplot(Diffs_large$difference_large,
        col=rainbow(27))
legend("topright",Diffs_large$family_large, fill=rainbow(27))

library(ggplot2)
dev.off()
ggplot(data=Diffs_large, aes(x=family_large, y=difference_large, 
                             fill=family_large)) +
  theme(axis.text.x = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background= element_blank(),
        axis.line= element_line(colour="black"),
        legend.text=element_text(face="italic")) +
  geom_bar(stat = "identity") +
  xlab("") + ylab("Difference in Range Size")+
  scale_fill_hue(name="Family")