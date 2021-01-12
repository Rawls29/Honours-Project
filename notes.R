Flora = read.delim('C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes/finalFlat.csv', sep='|', na.strings=c("","NA","nan", "NaN", "Na"))
View(Flora)
summary(Flora$species)
summary(Flora$genus)
summary(Flora$family)

Genus <- table(Flora$genus)
table(Flora$family)

?Flora

Genus

sort(Genus, decreasing = TRUE)

Family_Genus_Table <- table(Flora$family,Flora$genus)

View(Family_Genus_Table)

barplot(Family_Genus_Table)

print(class(Flora$X2C.DNA.content..pg.))

Flora$x2CNum <- as.numeric (Flora$X2C.DNA.content..pg.)

Species_2C_Table <- table(Flora$species,Flora$X2C.DNA.content..pg.)
View(Species_2C_Table)

View(Flora$species)
View(Flora$X2C.DNA.content..pg.)