#KW&Graphs for Range at Family Level
rm(list=ls())
#Loading my cleaned dataset
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
load(file = "Small_Flora.Rda")
Flora <- Small_Flora

#Asteraceae analysis
#Set up dataset
species <- Flora$species[which(Flora$family=="asteraceae")]
genus <- Flora$genus[which(Flora$family=="asteraceae")]
family <- which(Flora$family=="asteraceae")
FertGen <- Flora$FertGen[which(Flora$family=="asteraceae")]
Range <- Flora$Range[which(Flora$family=="asteraceae")]
x2CDNA <- Flora$x2CDNA[which(Flora$family=="asteraceae")]
x2CDNA_VAR <- Flora$x2CDNA_VAR[which(Flora$family=="asteraceae")]
Ploidy <- Flora$Ploidy[which(Flora$family=="asteraceae")]
Asteraceae <- data.frame(species, genus, family, FertGen, Range, x2CDNA, x2CDNA_VAR, Ploidy)
#Remove relevent outliers
AsRangeE <- Asteraceae$Range[c(-211)]
AsFertE <- Asteraceae$FertGen[c(-211)]
#Stats 4 Range
library(car)
leveneTest(AsRangeE~AsFertE)#homogenous
kruskal.test(AsRangeE~AsFertE) #no sig. diff
pairwise.wilcox.test(AsRangeE, AsFertE, p.adjust.method = "BH")
#Swarm plot 4 Range
library(beeswarm)
beeswarm(AsRangeE~AsFertE)
boxplot(AsRangeE~AsFertE, add=T, col="#0000ff22")
#Stats 4 Genome
library(car)
leveneTest(Asteraceae$x2CDNA~Asteraceae$FertGen)#p>0.05 so homogenous
kruskal.test(Asteraceae$x2CDNA~Asteraceae$FertGen) #no sig. diff

#Poaceae analysis
#Set up dataset
species <- Flora$species[which(Flora$family=="poaceae")]
genus <- Flora$genus[which(Flora$family=="poaceae")]
family <- which(Flora$family=="poaceae")
FertGen <- Flora$FertGen[which(Flora$family=="poaceae")]
Range <- Flora$Range[which(Flora$family=="poaceae")]
x2CDNA <- Flora$x2CDNA[which(Flora$family=="poaceae")]
x2CDNA_VAR <- Flora$x2CDNA_VAR[which(Flora$family=="poaceae")]
Ploidy <- Flora$Ploidy[which(Flora$family=="poaceae")]
Poaceae <- data.frame(species, genus, family, FertGen, Range, x2CDNA, x2CDNA_VAR, Ploidy)
#Stats 4 Range
library(car)
leveneTest(Poaceae$Range~Poaceae$FertGen)#homogenous
kruskal.test(Poaceae$Range~Poaceae$FertGen) #sig. diff (p<0.05)
pairwise.wilcox.test(Poaceae$Range, Poaceae$FertGen, p.adjust.method = "BH")#diff between self & cross
#Swarm plot 4 Range
library(beeswarm)
beeswarm(Poaceae$Range~Poaceae$FertGen)
boxplot(Poaceae$Range~Poaceae$FertGen, add=T, col="#0000ff22")
#Stats 4 Genome
library(car)
leveneTest(Poaceae$x2CDNA~Poaceae$FertGen)#p>0.05 so homogenous
kruskal.test(Poaceae$x2CDNA~Poaceae$FertGen) #no sig. diff

#Rosaceae analysis
#Set up dataset
species <- Flora$species[which(Flora$family=="rosaceae")]
genus <- Flora$genus[which(Flora$family=="rosaceae")]
family <- which(Flora$family=="rosaceae")
FertGen <- Flora$FertGen[which(Flora$family=="rosaceae")]
Range <- Flora$Range[which(Flora$family=="rosaceae")]
x2CDNA <- Flora$x2CDNA[which(Flora$family=="rosaceae")]
x2CDNA_VAR <- Flora$x2CDNA_VAR[which(Flora$family=="rosaceae")]
Ploidy <- Flora$Ploidy[which(Flora$family=="rosaceae")]
Rosaceae <- data.frame(species, genus, family, FertGen, Range, x2CDNA, x2CDNA_VAR, Ploidy)
#Remove relevent outliers
RoRangeE <- Rosaceae$Range[c(-140, -214)]
RoFertE <- Rosaceae$FertGen[c(-140, -214)]
#Stats 4 Range
library(car)
leveneTest(RoRangeE~RoFertE)#not homogenous
leveneTest(log(RoRangeE)~RoFertE)#homogenous
kruskal.test(log(RoRangeE)~RoFertE) #sig. diff (p<0.05)
pairwise.wilcox.test(log(RoRangeE), RoFertE, p.adjust.method = "BH") #diff. between cross&self and mixed&self
#Swarm plot 4 Range
library(beeswarm)
beeswarm(log(RoRangeE)~RoFertE)
boxplot(log(RoRangeE)~RoFertE, add=T, col="#0000ff22")
#Stats 4 Genome
library(car)
leveneTest(Rosaceae$x2CDNA~Rosaceae$FertGen)#p>0.05 so homogenous
kruskal.test(Rosaceae$x2CDNA~Rosaceae$FertGen) #no sig. diff


#Fabaceae analysis
#Set up dataset
species <- Flora$species[which(Flora$family=="fabaceae")]
genus <- Flora$genus[which(Flora$family=="fabaceae")]
family <- which(Flora$family=="fabaceae")
FertGen <- Flora$FertGen[which(Flora$family=="fabaceae")]
Range <- Flora$Range[which(Flora$family=="fabaceae")]
x2CDNA <- Flora$x2CDNA[which(Flora$family=="fabaceae")]
x2CDNA_VAR <- Flora$x2CDNA_VAR[which(Flora$family=="fabaceae")]
Ploidy <- Flora$Ploidy[which(Flora$family=="fabaceae")]
Fabaceae <- data.frame(species, genus, family, FertGen, Range, x2CDNA, x2CDNA_VAR, Ploidy)
#Remove relevent outliers
FaRangeE <- Fabaceae$Range[c(-119)]
FaFertE <- Fabaceae$FertGen[c(-119)]
#Stats 4 Range
library(car)
leveneTest(FaRangeE~FaFertE)#homogenous
kruskal.test(FaRangeE~FaFertE)#no sig. diff.
pairwise.wilcox.test(FaRangeE, FaFertE, p.adjust.method = "BH")
#Swarm plot 4 Range
library(beeswarm)
beeswarm(FaRangeE~FaFertE)
boxplot(FaRangeE~FaFertE, add=T, col="#0000ff22")
#Stats 4 Genome
library(car)
leveneTest(Fabaceae$x2CDNA~Fabaceae$FertGen)#p>0.05 so homogenous
kruskal.test(Fabaceae$x2CDNA~Fabaceae$FertGen) #no sig. diff

#Brassicaceae analysis
#Set up dataset
species <- Flora$species[which(Flora$family=="brassicaceae")]
genus <- Flora$genus[which(Flora$family=="brassicaceae")]
family <- which(Flora$family=="brassicaceae")
FertGen <- Flora$FertGen[which(Flora$family=="brassicaceae")]
Range <- Flora$Range[which(Flora$family=="brassicaceae")]
x2CDNA <- Flora$x2CDNA[which(Flora$family=="brassicaceae")]
x2CDNA_VAR <- Flora$x2CDNA_VAR[which(Flora$family=="brassicaceae")]
Ploidy <- Flora$Ploidy[which(Flora$family=="brassicaceae")]
Brassicaceae <- data.frame(species, genus, family, FertGen, Range, x2CDNA, x2CDNA_VAR, Ploidy)
#Remove relevent outliers
BaRangeE <- Brassicaceae$Range[c(-7)]
BaFertE <- Brassicaceae$FertGen[c(-7)]
#Stats 4 Range
library(car)
leveneTest(BaRangeE~BaFertE)#homogenous
kruskal.test(BaRangeE~BaFertE)#no sig. diff.
pairwise.wilcox.test(BaRangeE, BaFertE, p.adjust.method = "BH")
#Swarm plot 4 Range
library(beeswarm)
beeswarm(BaRangeE~BaFertE)
boxplot(BaRangeE~BaFertE, add=T, col="#0000ff22")
#Stats 4 Genome
library(car)
leveneTest(Brassicaceae$x2CDNA~Brassicaceae$FertGen)#p>0.05 so homogenous
kruskal.test(Brassicaceae$x2CDNA~Brassicaceae$FertGen) #no sig. diff

#Caryophyllaceae analysis
#Set up dataset
species <- Flora$species[which(Flora$family=="caryophyllaceae")]
genus <- Flora$genus[which(Flora$family=="caryophyllaceae")]
family <- which(Flora$family=="caryophyllaceae")
FertGen <- Flora$FertGen[which(Flora$family=="caryophyllaceae")]
Range <- Flora$Range[which(Flora$family=="caryophyllaceae")]
x2CDNA <- Flora$x2CDNA[which(Flora$family=="caryophyllaceae")]
x2CDNA_VAR <- Flora$x2CDNA_VAR[which(Flora$family=="caryophyllaceae")]
Ploidy <- Flora$Ploidy[which(Flora$family=="caryophyllaceae")]
Caryophyllaceae <- data.frame(species, genus, family, FertGen, Range, x2CDNA, x2CDNA_VAR, Ploidy)
#Remove relevent outliers
CaRangeE <- Caryophyllaceae$Range[c(-13, -42)]
CaFertE <- Caryophyllaceae$FertGen[c(-13, -42)]
#Stats 4 Range
library(car)
leveneTest(CaRangeE~CaFertE)#homogenous
kruskal.test(CaRangeE~CaFertE)#no sig. diff.
pairwise.wilcox.test(CaRangeE, CaFertE, p.adjust.method = "BH")
#Swarm plot 4 Range
library(beeswarm)
beeswarm(CaRangeE~CaFertE)
boxplot(CaRangeE~CaFertE, add=T, col="#0000ff22")
#Stats 4 Genome
library(car)
leveneTest(Caryophyllaceae$x2CDNA~Caryophyllaceae$FertGen)#p>0.05 so homogenous
kruskal.test(Caryophyllaceae$x2CDNA~Caryophyllaceae$FertGen) #no sig. diff

#Plantaginaceae analysis
#Set up dataset
species <- Flora$species[which(Flora$family=="plantaginaceae")]
genus <- Flora$genus[which(Flora$family=="plantaginaceae")]
family <- which(Flora$family=="plantaginaceae")
FertGen <- Flora$FertGen[which(Flora$family=="plantaginaceae")]
Range <- Flora$Range[which(Flora$family=="plantaginaceae")]
x2CDNA <- Flora$x2CDNA[which(Flora$family=="plantaginaceae")]
x2CDNA_VAR <- Flora$x2CDNA_VAR[which(Flora$family=="plantaginaceae")]
Ploidy <- Flora$Ploidy[which(Flora$family=="plantaginaceae")]
Plantaginaceae <- data.frame(species, genus, family, FertGen, Range, x2CDNA, x2CDNA_VAR, Ploidy)
#Stats 4 Range
library(car)
leveneTest(Plantaginaceae$Range~Plantaginaceae$FertGen)#non-homogenous
leveneTest(log(Plantaginaceae$Range)~Plantaginaceae$FertGen)#just about homogenous
kruskal.test(log(Plantaginaceae$Range)~Plantaginaceae$FertGen)#sig. (P<0.05)
pairwise.wilcox.test(log(Plantaginaceae$Range), Plantaginaceae$FertGen, p.adjust.method = "BH")#diff. self$cross
#Swarm plot 4 Range
library(beeswarm)
beeswarm(log(Plantaginaceae$Range)~Plantaginaceae$FertGen)
boxplot(log(Plantaginaceae$Range)~Plantaginaceae$FertGen, add=T, col="#0000ff22")
#Stats 4 Genome
library(car)
leveneTest(Plantaginaceae$x2CDNA~Plantaginaceae$FertGen)#p>0.05 so homogenous
kruskal.test(Plantaginaceae$x2CDNA~Plantaginaceae$FertGen) #sig. diff
pairwise.wilcox.test(Plantaginaceae$x2CDNA, Plantaginaceae$FertGen, p.adjust.method = "BH")#diff. self$cross
#Swarm plot 4 genome
library(beeswarm)
beeswarm(Plantaginaceae$x2CDNA~Plantaginaceae$FertGen)
boxplot(Plantaginaceae$x2CDNA~Plantaginaceae$FertGen, add=T, col="#0000ff22")