rm(list=ls())
#Loading my cleaned dataset
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
load(file = "Genome_Dataset.Rda")

log_2C <- log(Genome_Dataset$my2CDNA)

model <- glm(log_2C~Genome_Dataset$myFertGen, 
                 family=gaussian())
plot(model)
summary(model)