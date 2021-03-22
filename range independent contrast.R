rm(list=ls())
#Loading my cleaned dataset
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
load(file = "Reduced_Range_Dataset.Rda")
#Exporting Reduced_Range_Dataset to Excel
library(writexl)
write_xlsx(Reduced_Range_Dataset, 'Reduced Range Dataset.xlsx')

#Importing tree
library(ape)
range_fam_phy <- read.tree(text='((((Araceae, Alismataceae), ((Nartheciaceae, 
Dioscoreaceae), ((Melanthiaceae, (Colchicaceae, Liliaceae)), ((Orchidaceae, 
(Iridaceae, (Amaryllidaceae, Asparagaceae))), (Poaceae, (Juncaceae, 
Cyperaceae)))))), ((Papaveraceae, Ranunculaceae), (Buxaceae, (((Crassulaceae, 
(Grossulariaceae, Saxifragaceae)), ((((Fabaceae, Polygalaceae), ((Rosaceae, 
((Elaegnaceae, Rhamnaceae), (Ulmaceae, (Cannabaceae, Urticaceae)))), ((Fagaceae,
(Myricaceae, Betulaceae)), Cucurbitaceae))), (Celastraceae, (Oxidalaceae, 
((Hypericaceae, Elatinaceae), (Salicaceae, (Euphorbiaceae, Linaceae)))))), 
((Geraniaceae, (Lythraceae, Onagraceae)), (Sapindaceae, ((Malvaceae, 
Thymelaeaceae, Cistaceae), (Resedaceae, Brassicaceae)))))), (Santalaceae, 
(((Droseraceae, (Plumbaginaceae, Polygonaceae)), (Montiaceae, (Caryophyllaceae,
Amaranthaceae))), (Cornaceae, ((Balsaminaceae, (Primulaceae, Ericaceae)), 
(((Rubiaceae, (Gentianaceae, Apocynaceae)), Boraginaceae, (Convolvulaceae, 
Solanaceae), (Oleaceae, (Plantaginaceae, (Scorphulariaceae, ((Lentibulariaceae, 
Verbenaceae), (Lamiaceae, Orobachaceae)))))), (Aquifoliaceae, ((Campanulaceae, 
Asteraceae), ((Caprifoliaceae, Viburnaceae), (Araliaceae, Apiaceae))))))))))))), 
(Cupressaceae, Taxaceae));')
range_fam_data <- data.frame(family=c("Alismataceae", "Amaranthaceae", 
                                      "Amaryllidaceae", "Apiaceae", 
                                      "Apocynaceae", "Aquifoliaceae",
                                      "Araceae", "Araliaceae",
                                      "Asparagaceae", "Asteraceae",
                                      "Balsaminaceae", "Betulaceae", 
                                      "Boraginaceae", "Brassicaceae",
                                      "Buxaceae", "Campanulaceae",
                                      "Cannabaceae", "Caprifoliaceae",
                                      "Caryophyllaceae", "Celastraceae",
                                      "Cistaceae", "Colchicaceae",
                                      "Convolvulaceae", "Cornaceae",
                                      "Crassulaceae", "Cucurbitaceae",
                                      "Cupressaceae", "Cyperaceae",
                                      "Dioscoraceae", "Droseraceae",
                                      "Elaeagnaceae", "Elatinaceae",
                                      "Ericaceae", "Euphorbiaceae",
                                      "Fabaceae", "Fagaceae",
                                      "Gentianaceae", "Geraniaceae",
                                      "Grossulariaceae", "Hyperiaceae",
                                      "Iridaceae", "Juncaceae",
                                      "Lamiaceae", "Lentibulariaceae",
                                      "Liliaceae", "Linaceae",
                                      "Lythraceae", "Malvaceae",
                                      "Melanthiaceae", "Montiaceae",
                                      "Myricaceae", "Nartheciaceae",
                                      "Oleaceae", "Onagraceae",
                                      "Orchidaceae", "Orobanchaceae",
                                      "Oxalidaceae", "Papaveraceae",
                                      "Plantaginaceae", "Plumbaginaceae",
                                      "Poaceae", "Polygalaceae",
                                      "Polygonaceae", "Primulaceae",
                                      "Ranunculaceae", "Resedaceae",
                                      "Rhamnaceae", "Rosaceae", 
                                      "Rubiaceae", "Salicaceae", 
                                      "Santalaceae", "Sapindaceae", 
                                      "Saxifragaceae", "Scorphulariaceae", 
                                      "Solanaceae", "Taxaceae", 
                                      "Thymelaeaceae", "Ulmaceae", 
                                      "Urticaceae", "Verbenaceae", 
                                      "Viburnaceae"),
                             av_self_range=c(NA, 2659.00, NA, 799.00, 
                                             1209.50, NA, 48.00, 2943.00,
                                             3212.00, 1842.63, NA, NA,
                                             3333.00, 1473.67, NA, NA,
                                             NA, 630.60, 1062.75, NA,
                                             NA, NA, 126.00, NA,
                                             785.50, NA, NA, NA,
                                             NA, 1565.50, NA, 294.00,
                                             NA, NA, 1445.88, NA,
                                             547.50, 1442.75, NA, NA,
                                             NA, 2077.25, 1282.33, 809.00,
                                             NA, 674.00, 1590.00, 1148.00,
                                             NA, 2758.00, NA, NA,
                                             NA, 2390.83, 1033.29, 939.80,
                                             3186.00, 767.13, 794.80, NA,
                                             1776.53, 19.00, 1489.80, 1782.33,
                                             1934.00, NA, NA, 468.38, 
                                             NA, NA, NA, NA, 
                                             1312.00, NA, 1080.00, NA, 
                                             NA, NA, NA, NA, 
                                             NA),
                             av_mix_range=c(NA, 3136.00, 629.00, 1656.25, 
                                            951.67, NA, NA, NA,
                                            325.17, 1683.72, NA, NA,
                                            1797.33, 1680.38, NA, 211.67,
                                            NA, 1223.50, 1657.35, 1737.00,
                                            NA, 311.00, 1411.50, 1232.00, 
                                            1665.00, NA, NA, 13.00,
                                            NA, NA, NA, NA,
                                            1204.20, NA, 1069.67, NA,
                                            1053.75, 2020.80, 1041.00, 1820.20,
                                            NA, NA, 1587.44, NA,
                                            115.00, 3479.00, NA, 1280.00,
                                            714.00, NA, NA, 2344.00,
                                            1521.00, 1902.00, 541.50, 1008.83,
                                            NA, 1259.75, 2213.10, NA,
                                            2325.00, 2849.00, 2924.50, 1515.00,
                                            620.60, 1691.50, 768.00, 2038.06,
                                            2049.89, NA, NA, 1389.00, 
                                            1775.50, 1828.67, 414.00,  NA, 
                                            110.00, 2946.00, NA, 957.00, 
                                            2510.67),
                             av_cross_range=c(54.00, 800.29, 755.33, 1659.17, 
                                              3723.00, 3228.00, 1156.00, 3527.00,
                                              156.50, 2185.89, 21.00, 3083.33,
                                              407.67, 838.75, 2.00, 876.00,
                                              1281.00, 2664.60, 712.77, 1393.00,
                                              1003.00, NA, 3070.00, NA,
                                              2624.00, 1008.00, 1165.00, 1670.26,
                                              1425.00, NA, 65.00, NA,
                                              3350.00, 1544.75, 2075.73, 3096.50,
                                              523.00, 1385.00, 2161.00, NA,
                                              3532.00, 1761.17, 1422.31, NA,
                                              1.00, 58.00, 2527.00, NA,
                                              NA, NA, 1529.00, NA,
                                              3399.00, 3036.00, 298.00, 1726.75,
                                              NA, 2096.00, 2381.00, 234.00,
                                              2308.14, NA, 3524.00, 1891.75,
                                              1884.00, NA, 945.00, 2786.60,
                                              1057.33, 2333.36, 933.00, NA, 
                                              981.00, 487.00, NA, 2148.00, 
                                              NA, 650.00, 2718.00, NA, 
                                              537.00))
#Can't really construct a formula for this


#Working with species as tree tips
#Tree with relationships to a familial level
#Polytomies between species of the same genera and genera in the same family
library(ape)
filename <- "range_sp_tree2.nex"
range_sp_phy <- read.nexus(filename)

range_sp_data <- data.frame(species=Reduced_Range_Dataset$species,
                            range=Reduced_Range_Dataset$myPlantAtRange,
                            fert=Reduced_Range_Dataset$myFertGen,
                            num_fert=Reduced_Range_Dataset$myFertGen,
                            log_range=log(Reduced_Range_Dataset$myPlantAtRange))

library(caper)
sp_range <- comparative.data(range_sp_phy, range_sp_data, species)

model <- pgls(range~fert, sp_range)
plot(model)
print(model)
summary(model)
#ML kappa, lambda and delta
model2 <- pgls(range~fert, sp_range, kappa="ML", lambda="ML", delta="ML")
plot(model2)
print(model2)
summary(model2)
#Not hugely better than with kappa, lambda and delta = 1

library(plyr)
range_sp_data$num_fert <- revalue(range_sp_data$num_fert, 
                                  c("generally self"=1, 
                                    "mixed"=2,
                                    "generally cross"=3))
range_sp_data$num_fert <- as.factor(range_sp_data$num_fert)
range_sp_data$binary_self <- revalue(range_sp_data$num_fert, 
                                     c("1"="Yes", 
                                       "2"="No",
                                       "3"="No"))
range_sp_data$self_cross <- revalue(range_sp_data$num_fert, 
                                    c("1"="Self", 
                                      "2"=NA,
                                      "3"="Cross"))
sp_range <- comparative.data(range_sp_phy, range_sp_data, species)

crunchy <- crunch(range~fert, data=sp_range, equal.branch.length = TRUE)
summary(crunchy)
plot(crunchy)
#Crunch used for continuous variables, fert isn't continuous so not appropriate

#brunch contrast self/non-self
brunchy <- brunch(range~binary_self, data=sp_range, equal.branch.length = TRUE)
caic.table(brunchy)
summary(brunchy)
plot(brunchy)
#log_range
brunchy <- brunch(log_range~binary_self, data=sp_range, equal.branch.length = TRUE)
caic.table(brunchy)
summary(brunchy)
plot(brunchy)

#brunch contrast self/cross
brunchy2 <- brunch(range~self_cross, data=sp_range, equal.branch.length = TRUE)
caic.table(brunchy2)
summary(brunchy2)
plot(brunchy2)

#Genome independent contrasts
load(file = "Genome_Dataset.Rda")
library(ape)
filename2 <- "genome_phy.nwk"
genome_sp_phy <- read.tree(filename2)

genome_sp_data <- data.frame(species=Genome_Dataset$species,
                            genome=Genome_Dataset$myPlantAtRange,
                            fert=Genome_Dataset$myFertGen,
                            num_fert=Genome_Dataset$myFertGen,
                            log_genome=log(Genome_Dataset$myPlantAtRange))
library(caper)
sp_genome <- comparative.data(genome_sp_phy, genome_sp_data, species)

model3 <- pgls(genome~fert, sp_genome)
plot(model3)
print(model3)
summary(model3)
#ML kappa, lambda and delta
model4 <- pgls(genome~fert, sp_genome, kappa="ML", lambda="ML", delta="ML")
plot(model4)
print(model4)
summary(model4)
#ML kappa, lambda and delta differ from standard =1, but nothing sig.


(plyr)
genome_sp_data$num_fert <- revalue(genome_sp_data$num_fert, 
                                  c("generally self"=1, 
                                    "mixed"=2,
                                    "generally cross"=3))
genome_sp_data$num_fert <- as.factor(genome_sp_data$num_fert)
genome_sp_data$binary_self <- revalue(genome_sp_data$num_fert, 
                                     c("1"="Yes", 
                                       "2"="No",
                                       "3"="No"))
genome_sp_data$self_cross <- revalue(genome_sp_data$num_fert, 
                                    c("1"="Self", 
                                      "2"=NA,
                                      "3"="Cross"))
#brunch contrast self/non-self
brunchy <- brunch(genome~binary_self, data=sp_genome, equal.branch.length = TRUE)
caic.table(brunchy)
summary(brunchy)
plot(brunchy)

#brunch contrast self/cross
brunchy2 <- brunch(genome~self_cross, data=sp_genome, equal.branch.length = TRUE)
caic.table(brunchy2)
summary(brunchy2)
plot(brunchy2)