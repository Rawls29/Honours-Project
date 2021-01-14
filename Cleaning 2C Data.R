Flora = read.delim('C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes/finalFlat-Copy.csv', sep='|', na.strings=c("","NA","nan", "NaN", "Na"))

#Extract a particular cell
Flora$X2C.DNA.content..pg.[16]

#Create a column for cleaned 2C data
Flora$my2CDNA = Flora$X2C.DNA.content..pg.

#Replace values which can be simply replaced
Flora$my2CDNA[16] <- "1.07"
Flora$my2CDNA[18] <- "2.7"
Flora$my2CDNA[48] <- "17.1"
Flora$my2CDNA[68] <- "6.0"
Flora$my2CDNA[111] <- "32.7"
Flora$my2CDNA[112] <- "60.34"
Flora$my2CDNA[122] <- "14.9"
Flora$my2CDNA[203] <- "4.5"
Flora$my2CDNA[207] <- "1.29"
Flora$my2CDNA[220] <- "0.9"
Flora$my2CDNA[245] <- "1.6"
Flora$my2CDNA[326] <- "25.7"
Flora$my2CDNA[329] <- "25.75"
Flora$my2CDNA[344] <- "1.16"
Flora$my2CDNA[347] <- "3.15"
Flora$my2CDNA[368] <- "1.8"
Flora$my2CDNA[373] <- "3.4"
Flora$my2CDNA[391] <- "1.6"
Flora$my2CDNA[395] <- "2.3"
Flora$my2CDNA[398] <- "1.6"
Flora$my2CDNA[399] <- "1.6"
Flora$my2CDNA[417] <- "18.4"
Flora$my2CDNA[497] <- "0.8"
Flora$my2CDNA[501] <- "0.49"