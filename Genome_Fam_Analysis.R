rm(list=ls())
#Loading my cleaned dataset
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
load(file = "Genome_Dataset.Rda")

View(Genome_Dataset)
View(table(Genome_Dataset$family))

#Poaceae
p_species <- Genome_Dataset$species[which(Genome_Dataset$family=="poaceae")]
p_genus <- Genome_Dataset$genus[which(Genome_Dataset$family=="poaceae")]
p_fert <- Genome_Dataset$myFertGen[which(Genome_Dataset$family=="poaceae")]
p_2c <- Genome_Dataset$my2CDNA[which(Genome_Dataset$family=="poaceae")]
p_2c_var <- Genome_Dataset$my2CDNA_VAR[which(Genome_Dataset$family=="poaceae")]
p_ploidy <- Genome_Dataset$myPloidy[which(Genome_Dataset$family=="poaceae")]
Poaceae <- data.frame(p_species, p_genus, p_fert, p_2c, p_2c_var, p_ploidy)
table(Poaceae$p_fert)
#Analysis
shapiro.test(Poaceae$p_2c) #p<0.05 therefore non-normal
shapiro.test(log(Poaceae$p_2c)) #p>0.05 therefore normal
p_anova <- aov(log(p_2c)~p_fert, data=Poaceae)
summary(p_anova) #p>0.05 so no sig. diff between means
#KW as alternative if all test need to be the same?
kruskal.test(p_2c~p_fert, data=Poaceae)

#Asteraceae
a_species <- Genome_Dataset$species[which(Genome_Dataset$family=="asteraceae")]
a_genus <- Genome_Dataset$genus[which(Genome_Dataset$family=="asteraceae")]
a_fert <- Genome_Dataset$myFertGen[which(Genome_Dataset$family=="asteraceae")]
a_2c <- Genome_Dataset$my2CDNA[which(Genome_Dataset$family=="asteraceae")]
a_2c_var <- Genome_Dataset$my2CDNA_VAR[which(Genome_Dataset$family=="asteraceae")]
a_ploidy <- Genome_Dataset$myPloidy[which(Genome_Dataset$family=="asteraceae")]
Asteraceae <- data.frame(a_species, a_genus, a_fert, a_2c, a_2c_var, a_ploidy)
table(Asteraceae$a_fert)
#Analysis
shapiro.test(Asteraceae$a_2c) #p<0.05 therefore non-normal
shapiro.test(log(Asteraceae$a_2c)) #p<0.05 therefore non-normal
library(car)
leveneTest(a_2c~a_fert, data=Asteraceae) #p>0.05 so variances are homogenous
kruskal.test(a_2c~a_fert, data=Asteraceae)
#p>0.05 therefore median genome size not sig. different

#Fabaceae
f_species <- Genome_Dataset$species[which(Genome_Dataset$family=="fabaceae")]
f_genus <- Genome_Dataset$genus[which(Genome_Dataset$family=="fabaceae")]
f_fert <- Genome_Dataset$myFertGen[which(Genome_Dataset$family=="fabaceae")]
f_2c <- Genome_Dataset$my2CDNA[which(Genome_Dataset$family=="fabaceae")]
f_2c_var <- Genome_Dataset$my2CDNA_VAR[which(Genome_Dataset$family=="fabaceae")]
f_ploidy <- Genome_Dataset$myPloidy[which(Genome_Dataset$family=="fabaceae")]
Fabaceae <- data.frame(f_species, f_genus, f_fert, f_2c, f_2c_var, f_ploidy)
table(Fabaceae$f_fert)
#Analysis
shapiro.test(Fabaceae$f_2c) #p<0.05 therefore non-normal
shapiro.test(log(Fabaceae$f_2c)) #p<0.05 therefore non-normal
library(car)
leveneTest(f_2c~f_fert, data=Fabaceae) #p>0.05 so variances are homogenous
kruskal.test(f_2c~f_fert, data=Fabaceae)
#p>0.05 therefore median genome size not sig. different

#Brassicaceae
b_species <- Genome_Dataset$species[which(Genome_Dataset$family=="brassicaceae")]
b_genus <- Genome_Dataset$genus[which(Genome_Dataset$family=="brassicaceae")]
b_fert <- Genome_Dataset$myFertGen[which(Genome_Dataset$family=="brassicaceae")]
b_2c <- Genome_Dataset$my2CDNA[which(Genome_Dataset$family=="brassicaceae")]
b_2c_var <- Genome_Dataset$my2CDNA_VAR[which(Genome_Dataset$family=="brassicaceae")]
b_ploidy <- Genome_Dataset$myPloidy[which(Genome_Dataset$family=="brassicaceae")]
Brassicaceae <- data.frame(b_species, b_genus, b_fert, b_2c, b_2c_var, b_ploidy)
table(Brassicaceae$b_fert)
#Analysis
shapiro.test(Brassicaceae$b_2c) #p<0.05 therefore non-normal
shapiro.test(log(Brassicaceae$b_2c)) #p>0.05 therefore normal
b_anova <- aov(log(b_2c)~b_fert, data=Brassicaceae)
summary(b_anova) #p>0.05 so no sig. diff between means
#KW as alternative if all test need to be the same?
kruskal.test(b_2c~b_fert, data=Brassicaceae)

#Ranunculaceae
r_species <- Genome_Dataset$species[which(Genome_Dataset$family=="ranunculaceae")]
r_genus <- Genome_Dataset$genus[which(Genome_Dataset$family=="ranunculaceae")]
r_fert <- Genome_Dataset$myFertGen[which(Genome_Dataset$family=="ranunculaceae")]
r_2c <- Genome_Dataset$my2CDNA[which(Genome_Dataset$family=="ranunculaceae")]
r_2c_var <- Genome_Dataset$my2CDNA_VAR[which(Genome_Dataset$family=="ranunculaceae")]
r_ploidy <- Genome_Dataset$myPloidy[which(Genome_Dataset$family=="ranunculaceae")]
Ranunculaceae <- data.frame(r_species, r_genus, r_fert, r_2c, r_2c_var, r_ploidy)
table(Ranunculaceae$r_fert)
#Analysis
shapiro.test(Ranunculaceae$r_2c) #p<0.05 therefore non-normal
shapiro.test(log(Ranunculaceae$r_2c)) #p>0.05 therefore normal
r_anova <- aov(log(r_2c)~r_fert, data=Ranunculaceae)
summary(r_anova) #p>0.05 so no sig. diff between means
#KW as alternative if all test need to be the same?
kruskal.test(r_2c~r_fert, data=Ranunculaceae)


#Plantaginaceae
pl_species <- Genome_Dataset$species[which(Genome_Dataset$family=="plantaginaceae")]
pl_genus <- Genome_Dataset$genus[which(Genome_Dataset$family=="plantaginaceae")]
pl_fert <- Genome_Dataset$myFertGen[which(Genome_Dataset$family=="plantaginaceae")]
pl_2c <- Genome_Dataset$my2CDNA[which(Genome_Dataset$family=="plantaginaceae")]
pl_2c_var <- Genome_Dataset$my2CDNA_VAR[which(Genome_Dataset$family=="plantaginaceae")]
pl_ploidy <- Genome_Dataset$myPloidy[which(Genome_Dataset$family=="plantaginaceae")]
Plantaginaceae <- data.frame(pl_species, pl_genus, pl_fert, pl_2c, pl_2c_var, pl_ploidy)
table(Plantaginaceae$pl_fert)
#Analysis
shapiro.test(Plantaginaceae$pl_2c) #p<0.05 therefore non-normal
shapiro.test(log(Plantaginaceae$pl_2c)) #p>0.05 therefore normal
pl_anova <- aov(log(pl_2c)~pl_fert, data=Plantaginaceae)
summary(pl_anova) #p>0.05 therfore no sig. diff between means
#KW as alternative if all test need to be the same?
kruskal.test(pl_2c~pl_fert, data=Plantaginaceae)
pairwise.wilcox.test(Plantaginaceae$pl_2c, Plantaginaceae$pl_fert, 
                     p.adjust.method = "BH")

#Rosaceae
ro_species <- Genome_Dataset$species[which(Genome_Dataset$family=="rosaceae")]
ro_genus <- Genome_Dataset$genus[which(Genome_Dataset$family=="rosaceae")]
ro_fert <- Genome_Dataset$myFertGen[which(Genome_Dataset$family=="rosaceae")]
ro_2c <- Genome_Dataset$my2CDNA[which(Genome_Dataset$family=="rosaceae")]
ro_2c_var <- Genome_Dataset$my2CDNA_VAR[which(Genome_Dataset$family=="rosaceae")]
ro_ploidy <- Genome_Dataset$myPloidy[which(Genome_Dataset$family=="rosaceae")]
Rosaceae <- data.frame(ro_species, ro_genus, ro_fert, ro_2c, ro_2c_var, ro_ploidy)
table(Rosaceae$ro_fert)
#Analysis
shapiro.test(Rosaceae$ro_2c) #p>0.05 therefore normal
ro_anova <- aov(log(ro_2c)~ro_fert, data=Rosaceae)
summary(ro_anova) #p>0.05 therfore no sig diff. between means
#KW as alternative if all test need to be the same?
kruskal.test(ro_2c~ro_fert, data=Rosaceae)