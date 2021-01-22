rm(list=ls())
Flora = read.delim('C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes/finalFlat-Copy.csv', sep='|', na.strings=c("","NA","nan", "NaN", "Na"))

#Create a column for cleaned 2C data
Flora$my2CDNA <- Flora$X2C.DNA.content..pg.

#Create a column for 2C variance
Flora$my2CDNA_VAR = NA

#Creat a column for ploidy
Flora$myPloidy = NA

#Replace values which can be simply replaced
Flora$my2CDNA[16] <- "1.07"
Flora$my2CDNA[18] <- "2.7"
Flora$my2CDNA[48] <- "17.1"
Flora$my2CDNA[49] <- NA
Flora$my2CDNA[68] <- "6.0"
Flora$my2CDNA[106] <- "26.75"
Flora$my2CDNA[111] <- "32.7"
Flora$my2CDNA[112] <- "60.34"
Flora$my2CDNA[122] <- "14.9"
Flora$my2CDNA[138] <- NA
Flora$my2CDNA[152] <- NA
Flora$my2CDNA[203] <- "4.5"
Flora$my2CDNA[207] <- "1.29"
Flora$my2CDNA[213] <- "2.1"
Flora$my2CDNA[220] <- "0.9"
Flora$my2CDNA[245] <- "1.6"
Flora$my2CDNA[284] <- "18.07"
Flora$my2CDNA[326] <- "25.7"
Flora$my2CDNA[328] <- "28.3"
Flora$my2CDNA[329] <- "25.75"
Flora$my2CDNA[344] <- "1.16"
Flora$my2CDNA[347] <- "3.15"
Flora$my2CDNA[362] <- "1.84"
Flora$my2CDNA[368] <- "1.8"
Flora$my2CDNA[373] <- "3.45"
Flora$my2CDNA[391] <- "1.6"
Flora$my2CDNA[395] <- "2.3"
Flora$my2CDNA[398] <- "1.6"
Flora$my2CDNA[399] <- "1.6"
Flora$my2CDNA[406] <- "13"
Flora$my2CDNA[415] <- NA
Flora$my2CDNA[417] <- "18.4"
Flora$my2CDNA[462] <- "NA"
Flora$my2CDNA[497] <- "0.8"
Flora$my2CDNA[501] <- "0.49"
Flora$my2CDNA[504] <- "3.3"
Flora$my2CDNA[505] <- "1.8"
Flora$my2CDNA[529] <- "1.2"
Flora$my2CDNA[603] <- NA
Flora$my2CDNA[613] <- "2.24"
Flora$my2CDNA[653] <- "1.2"
Flora$my2CDNA[662] <- NA
Flora$my2CDNA[665] <- "4.9"
Flora$my2CDNA[729] <- "2.84"
Flora$my2CDNA[735] <- "2.58"
Flora$my2CDNA[737] <- "5.54"
Flora$my2CDNA[768] <- "35.33"
Flora$my2CDNA[791] <- "7.85"
Flora$my2CDNA[882] <- "1.47"
Flora$my2CDNA[883] <- "1.52"
Flora$my2CDNA[895] <- "4.6"
Flora$my2CDNA[942] <- "1.6"
Flora$my2CDNA[947] <- "6.1"
Flora$my2CDNA[942] <- "8.8"
Flora$my2CDNA[947] <- "6.1"
Flora$my2CDNA[981] <- "0.94"
Flora$my2CDNA[985] <- NA
Flora$my2CDNA[986] <- "11"
Flora$my2CDNA[1003] <- "22.98"
Flora$my2CDNA[1005] <- "1.87"
Flora$my2CDNA[1006] <- "2.58"
Flora$my2CDNA[1037] <- "2"
Flora$my2CDNA[1038] <- "1.8"
Flora$my2CDNA[1050] <- "3"
Flora$my2CDNA[1071] <- NA
Flora$my2CDNA[1073] <- "4.2"
Flora$my2CDNA[1084] <- "8.3"
Flora$my2CDNA[1088] <- "1.29"
Flora$my2CDNA[1100] <- "0.5"
Flora$my2CDNA[1101] <- "0.3"
Flora$my2CDNA[1139] <- "18.6"
Flora$my2CDNA[1160] <- "1.3"
Flora$my2CDNA[1163] <- "0.8"
Flora$my2CDNA[1242] <- "1.08"
Flora$my2CDNA[1255] <- "8.94"
Flora$my2CDNA[1272] <- "29.01"
Flora$my2CDNA[1292] <- "94.6"
Flora$my2CDNA[1316] <- "56.3"
Flora$my2CDNA[1332] <- "2.9"
Flora$my2CDNA[1341] <- "2"
Flora$my2CDNA[1344] <- "3.77"
Flora$my2CDNA[1406] <- "3.4"
Flora$my2CDNA[1407] <- "12.3"
Flora$my2CDNA[1428] <- "NA"
Flora$my2CDNA[1443] <- "7.34"
Flora$my2CDNA[1452] <- NA
Flora$my2CDNA[1458] <- "4.37"
Flora$my2CDNA[1472] <- NA
Flora$my2CDNA[1497] <- NA
Flora$my2CDNA[1532] <- "21.7"
Flora$my2CDNA[1539] <- "22.4"
Flora$my2CDNA[1554] <- "1.9"
Flora$my2CDNA[1577] <- NA
Flora$my2CDNA[1584] <- "2.3"
Flora$my2CDNA[1588] <- "2.3"
Flora$my2CDNA[1592] <- NA
Flora$my2CDNA[1626] <- "1.28"
Flora$my2CDNA[1631] <- "3.7"
Flora$my2CDNA[1641] <- "0.6"
Flora$my2CDNA[1651] <- "0.61"
Flora$my2CDNA[1697] <- "26.4"
Flora$my2CDNA[1701] <- "13.8"
Flora$my2CDNA[1704] <- "19.95"
Flora$my2CDNA[1706] <- "17.12"
Flora$my2CDNA[1710] <- "15.5"
Flora$my2CDNA[1712] <- "11.9"
Flora$my2CDNA[1714] <- "23"
Flora$my2CDNA[1715] <- "18.6"
Flora$my2CDNA[1716] <- "6.1"
Flora$my2CDNA[1733] <- "2.3"
Flora$my2CDNA[1734] <- "5"
Flora$my2CDNA[1768] <- "77.66"
Flora$my2CDNA[1822] <- "0.9"
Flora$my2CDNA[1830] <- "1.8"
Flora$my2CDNA[1838] <- "0.97"
Flora$my2CDNA[1845] <- "1.14"
Flora$my2CDNA[1857] <- "1.45"
Flora$my2CDNA[1863] <- "4.42"
Flora$my2CDNA[1898] <- "1.8"
Flora$my2CDNA[1904] <- "0.95"
Flora$my2CDNA[1912] <- NA
Flora$my2CDNA[1940] <- "7.9"
Flora$my2CDNA[1952] <- "1.16"
Flora$my2CDNA[1956] <- "4.9"
Flora$my2CDNA[1974] <- "2.8"
Flora$my2CDNA[1988] <- "14.2"
Flora$my2CDNA[1989] <- "26"
Flora$my2CDNA[1991] <- "33.7"
Flora$my2CDNA[1994] <- "30.3"
Flora$my2CDNA[1995] <- "19"
Flora$my2CDNA[2003] <- "1.43"
Flora$my2CDNA[2004] <- "0.76"
Flora$my2CDNA[2020] <- NA
Flora$my2CDNA[2027] <- "5.26"
Flora$my2CDNA[2033] <- "1.3"
Flora$my2CDNA[2034] <- "1.25"
Flora$my2CDNA[2096] <- "6.4"
Flora$my2CDNA[2100] <- "1"
Flora$my2CDNA[2101] <- "1.22"
Flora$my2CDNA[2105] <- "0.81"
Flora$my2CDNA[2115] <- "9.22"
Flora$my2CDNA[2117] <- "3.45"
Flora$my2CDNA[2119] <- "53.8"
Flora$my2CDNA[2120] <- "60.1"
Flora$my2CDNA[2121] <- "0.9"
Flora$my2CDNA[2122] <- "3.4"
Flora$my2CDNA[2123] <- "2.08"
Flora$my2CDNA[2126] <- "4.7"
Flora$my2CDNA[2127] <- "4.81"
Flora$my2CDNA[2131] <- "4.9"
Flora$my2CDNA[2133] <- "7.6"
Flora$my2CDNA[2136] <- "18.15"
Flora$my2CDNA[2140] <- "1.13"
Flora$my2CDNA[2141] <- "120.2"
Flora$my2CDNA[2142] <- "2.35"
Flora$my2CDNA[2144] <- "6.36"
Flora$my2CDNA[2145] <- "1.05"
Flora$my2CDNA[2147] <- "3.45"
Flora$my2CDNA[2157] <- "1.4"
Flora$my2CDNA[2159] <- "3.9"
Flora$my2CDNA[2170] <- "1.8"
Flora$my2CDNA[2185] <- "1.35"
Flora$my2CDNA[2186] <- "1.2"
Flora$my2CDNA[2190] <- "6.5"
Flora$my2CDNA[2192] <- "3.4"
Flora$my2CDNA[2194] <- "8.3"
Flora$my2CDNA[2199] <- "1.51"
Flora$my2CDNA[2201] <- NA
Flora$my2CDNA[2208] <- "0.4"
Flora$my2CDNA[2217] <- "33.8"
Flora$my2CDNA[2230] <- "6.45"
Flora$my2CDNA[2236] <- "40.3"
Flora$my2CDNA[2240] <- "54.94"
Flora$my2CDNA[2242] <- "48.4"
Flora$my2CDNA[2244] <- "51.3"
Flora$my2CDNA[2245] <- "45.96"
Flora$my2CDNA[2249] <- "0.93"
Flora$my2CDNA[2251] <- "2.31"
Flora$my2CDNA[2252] <- "2.28"
Flora$my2CDNA[2253] <- "1.73"
Flora$my2CDNA[2255] <- "1.42"
Flora$my2CDNA[2257] <- "5.56"
Flora$my2CDNA[2258] <- "13.74"
Flora$my2CDNA[2259] <- "22.12"
Flora$my2CDNA[2266] <- "5.7"
Flora$my2CDNA[2273] <- "2.4"
Flora$my2CDNA[2277] <- "5.6"
Flora$my2CDNA[2281] <- "0.84"
Flora$my2CDNA[2282] <- "0.86"
Flora$my2CDNA[2284] <- "0.89"
Flora$my2CDNA[2285] <- "30.7"
Flora$my2CDNA[2286] <- "19.66"
Flora$my2CDNA[2287] <- "16.88"
Flora$my2CDNA[2291] <- "1.61"
Flora$my2CDNA[2293] <- "1"
Flora$my2CDNA[2308] <- "1.04"
Flora$my2CDNA[2311] <- "1.08"
Flora$my2CDNA[2313] <- "0.9"
Flora$my2CDNA[2314] <- "0.99"
Flora$my2CDNA[2327] <- "1.1"
Flora$my2CDNA[2348] <- "0.8"
Flora$my2CDNA[2408] <- "1.1"
Flora$my2CDNA[2414] <- "2"
Flora$my2CDNA[2416] <- "2"
Flora$my2CDNA[2417] <- "1.82"
Flora$my2CDNA[2418] <- "1.85"
Flora$my2CDNA[2419] <- "1.7"
Flora$my2CDNA[2426] <- "18"
Flora$my2CDNA[2436] <- "23.3"
Flora$my2CDNA[2702] <- "45.8"
Flora$my2CDNA[2779] <- "9.1"
Flora$my2CDNA[2827] <- NA
Flora$my2CDNA[3003] <- NA
Flora$my2CDNA[3006] <- "1.55"
Flora$my2CDNA[3066] <- "93.1"
Flora$my2CDNA[3071] <- "7.7"
Flora$my2CDNA[3072] <- "5.8"
Flora$my2CDNA[3074] <- "4.25"
Flora$my2CDNA[3075] <- "3.98"
Flora$my2CDNA[3081] <- "0.36"
Flora$my2CDNA[3088] <- "1.33"
Flora$my2CDNA[3092] <- "3.01"
Flora$my2CDNA[3092] <- "1.26"
Flora$my2CDNA[3096] <- "0.49"
Flora$my2CDNA[3097] <- "0.47"
Flora$my2CDNA[3098] <- "0.44"
Flora$my2CDNA[3103] <- "0.71"
Flora$my2CDNA[3124] <- "1.46"
Flora$my2CDNA[3126] <- "2.16"
Flora$my2CDNA[3127] <- "0.66"
Flora$my2CDNA[3129] <- "1.4"
Flora$my2CDNA[3131] <- "2.98"
Flora$my2CDNA[3133] <- "0.72"
Flora$my2CDNA[3135] <- "2.82"
Flora$my2CDNA[3138] <- "1.7"
Flora$my2CDNA[3139] <- "1.8"
Flora$my2CDNA[3140] <- "1.9"
Flora$my2CDNA[3141] <- "1.4"
Flora$my2CDNA[3142] <- "0.84"
Flora$my2CDNA[3146] <- "0.88"
Flora$my2CDNA[3148] <- "1.42"
Flora$my2CDNA[3149] <- "1.08"
Flora$my2CDNA[3150] <- "8.07"
Flora$my2CDNA[3151] <- "8.3"
Flora$my2CDNA[3155] <- "4.5"
Flora$my2CDNA[3157] <- "9.1"
Flora$my2CDNA[3158] <- "5.84"
Flora$my2CDNA[3162] <- "7.9"
Flora$my2CDNA[3163] <- "14.8"
Flora$my2CDNA[3164] <- "5.2"
Flora$my2CDNA[3166] <- "10.6"
Flora$my2CDNA[3169] <- "9.3"
Flora$my2CDNA[3170] <- "16.1"
Flora$my2CDNA[3171] <- "9.45"
Flora$my2CDNA[3172] <- "6.18"
Flora$my2CDNA[3175] <- "4.2"
Flora$my2CDNA[3176] <- "1.51"
Flora$my2CDNA[3180] <- "3.02"
Flora$my2CDNA[3190] <- "4.04"
Flora$my2CDNA[3192] <- "152"
Flora$my2CDNA[3193] <- "0.85"
Flora$my2CDNA[3194] <- "5.86"
Flora$my2CDNA[3195] <- "8.29"
Flora$my2CDNA[3197] <- "13.78"
Flora$my2CDNA[3210] <- "6.3"
Flora$my2CDNA[3215] <- "4.6"
Flora$my2CDNA[3218] <- "6.3"
Flora$my2CDNA[3219] <- "1.54"

#Values with means
#Add means to cleaned 2C DNA column
Flora$my2CDNA[23] <- "12.525"
Flora$my2CDNA[43] <- "10.29"
Flora$my2CDNA[56] <- "8.2"
Flora$my2CDNA[92] <- "25.985"
Flora$my2CDNA[95] <- "27.55"
Flora$my2CDNA[125] <- "47.805"
Flora$my2CDNA[157] <- "2.17"
Flora$my2CDNA[257] <- "8.595"
Flora$my2CDNA[289] <- "15.17"
Flora$my2CDNA[389] <- "1.21"
Flora$my2CDNA[390] <- "0.88"
Flora$my2CDNA[473] <- "1.51"
Flora$my2CDNA[607] <- "32.25"
Flora$my2CDNA[621] <- "2.31"
Flora$my2CDNA[635] <- "1.98"
Flora$my2CDNA[1257] <- "13.0225"
Flora$my2CDNA[1530] <- "16.15"
Flora$my2CDNA[1633] <- "1.175"
Flora$my2CDNA[2098] <- "2.55"
Flora$my2CDNA[2106] <- "1.515"
Flora$my2CDNA[2128] <- "8.2"
Flora$my2CDNA[2231] <- "8.975"
Flora$my2CDNA[2235] <- "43.4533"
Flora$my2CDNA[2237] <- "45.87"
Flora$my2CDNA[2276] <- "9.82"
Flora$my2CDNA[2376] <- "1.245"
Flora$my2CDNA[2450] <- "2"
Flora$my2CDNA[2700] <- "17.25"
Flora$my2CDNA[2705] <- "45.3"
Flora$my2CDNA[3016] <- "14.825"

#Add variances in 2C DNA to variance column
Flora$my2CDNA_VAR[23] <- 15.40125
Flora$my2CDNA_VAR[43] <- 35.1122
Flora$my2CDNA_VAR[56] <- 2.42
Flora$my2CDNA_VAR[92] <- 101.24645
Flora$my2CDNA_VAR[95] <- 53.045
Flora$my2CDNA_VAR[125] <- 62.60805
Flora$my2CDNA_VAR[157] <- 1.7298
Flora$my2CDNA_VAR[257] <- 15.84845
Flora$my2CDNA_VAR[289] <- 6.2658
Flora$my2CDNA_VAR[389] <- 0.21125
Flora$my2CDNA_VAR[390] <- 0.00045
Flora$my2CDNA_VAR[473] <- 0.0162
Flora$my2CDNA_VAR[607] <- 0.125
Flora$my2CDNA_VAR[621] <- 0.0722
Flora$my2CDNA_VAR[635] <- 0.7688
Flora$my2CDNA_VAR[1257] <- 10.332035
Flora$my2CDNA_VAR[1530] <- 57.245
Flora$my2CDNA_VAR[1633] <- 0.00405
Flora$my2CDNA_VAR[2098] <- 0.245
Flora$my2CDNA_VAR[2106] <- 0.04205
Flora$my2CDNA_VAR[2128] <- 1.28
Flora$my2CDNA_VAR[2231] <- 3.51125
Flora$my2CDNA_VAR[2235] <- 17.890533
Flora$my2CDNA_VAR[2237] <- 3.7538
Flora$my2CDNA_VAR[2276] <- 1.9208
Flora$my2CDNA_VAR[2376] <- 0.68455
Flora$my2CDNA_VAR[2450] <- 1.62
Flora$my2CDNA_VAR[2700] <- 136.125
Flora$my2CDNA_VAR[2705] <- 169.28
Flora$my2CDNA_VAR[3016] <- 60.1625

#Adding mutiple entries for different ploidy levels
#Acer campestre
#2x
Flora$my2CDNA[14] <- "1.38"
Flora$myPloidy[14] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3275] <- Flora$species[14]
Flora$my2CNDA[3275] <- "2.7"
Flora$myPloidy[3275] <- 4

#Elytrigia repens
#6x
Flora$my2CDNA[51] <- "23.37"
Flora$myPloidy[51] <- 6
#9x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3276] <- Flora$species[51]
Flora$my2cDNA[3276] <- "34.91"
Flora$myPloidy[3276] <- 9

#Allium sphaerocephalon
#2x
Flora$my2CDNA[108] <- "23.8"
Flora$myPloidy[108] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3277] <- Flora$species[108]
Flora$my2CDNA[3277] <- "40.11"
Flora$myPloidy[3277] <- 3

#Alnus glutinosa
#2x
Flora$my2CDNA[115] <- "1.055"
Flora$my2CDNA_VAR[115] <- 0.00405
Flora$myPloidy[115] <-  2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3278] <- Flora$species[115]
Flora$my2CDNA[3278] <- "2.01"
Flora$myPloidy[3278] <- 4

#Arabidposis aenosa
#2x
Flora$my2CDNA[219] <- "0.4"
Flora$myPloidy[219] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3279] <- Flora$species[219]
Flora$my2CDNA[3279] <- "0.78"
Flora$myPloidy[3279] <- 4

#Artemisia campestris
#2x
Flora$my2CDNA[261] <- "6.125"
Flora$my2CDNA_VAR[261] <- 0.13005
Flora$myPloidy[261] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3280] <- Flora$species[261]
Flora$my2CDNA[3280] <- "11"
Flora$myPloidy[3280] <- 4

#Artemisia dracunculus
#2x
Flora$my2CDNA[262] <- "5.07"
Flora$my2CDNA_VAR[262] <- 1.5138
Flora$myPloidy[262] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3281] <- Flora$species[262]
Flora$my2CDNA[3281] <- "10.24"
Flora$my2CDNA_VAR[3281] <- 4.9928
Flora$myPloidy[3281] <- 4
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3282] <- Flora$species[262]
Flora$my2CDNA[3282] <- "15.71"
Flora$myPloidy[3282] <- 6
#8x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3283] <- Flora$species[262]
Flora$my2CDNA[3283] <- "15.91"
Flora$myPloidy[3283] <- 8
#10x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3284] <- Flora$species[262]
Flora$my2CDNA[3284] <- "24.58"
Flora$myPloidy[3284] <- 10

#Asplenium trichomanes
#2x
Flora$my2CDNA[292] <- "8.54"
Flora$myPloidy[292] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3285] <- Flora$species[292]
Flora$my2CDNA[3285] <- "12.2"
Flora$myPloidy[3285] <- 3
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3286] <- Flora$species[292]
Flora$my2CDNA[3286] <- "18.11"
Flora$myPloidy[3286] <- 4

#Atriplex halimus
#2x
Flora$my2CDNA[313] <- "2.44"
Flora$myPloidy[313] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3287] <- Flora$species[313]
Flora$my2CDNA[3287] <- "4.77"
Flora$myPloidy[3287] <-  4

#Callitriche stagnalis
#2x
Flora$my2CDNA[466] <- "2.99"
Flora$myPloidy[466] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3288] <- Flora$species[466]
Flora$my2CDNA[3288] <- "4.55"
Flora$myPloidy[3288] <- 3

#Campanula rotundifolia
#2x
Flora$my2CDNA[482] <- "2.19"
Flora$myPloidy[482] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3289] <- Flora$species[482]
Flora$my2CDNA[3289] <- "4.66"
Flora$myPloidy[3289] <- 4

#Centaurea scabiosa
#2x
Flora$my2CDNA[618] <- "3.36"
Flora$myPloidy[618] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3290] <- Flora$species[618]
Flora$my2CDNA[3290] <- "4.59"
Flora$myPloidy[3290] <- 4

#Chenopodium album
#2x
Flora$my2CDNA[669] <- "1.53"
Flora$myPloidy[669] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3291] <- Flora$species[669]
Flora$my2CDNA[3291] <- "3.26"
Flora$myPloidy[3291] <- 4
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3292] <- Flora$species[669]
Flora$my2CDNA[3292] <- "4.7"
Flora$myPloidy[3292] <- 6

#Leucanthemum vulgare
#2x
Flora$my2CDNA[705] <- "10.54"
Flora$myPloidy[705] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3293] <- Flora$species[705]
Flora$my2CDNA[3293] <- "20.2"
Flora$myPloidy[3293] <- 4
#8x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3294] <- Flora$species[705]
Flora$my2CDNA[3294] <- "32.69"
Flora$myPloidy[3294] <- 8

#Fallopia dumetorum
#2x
Flora$my2CDNA[1246] <- "0.7"
Flora$myPloidy[1246] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3295] <- Flora$species[1246]
Flora$my2CDNA[3295] <- "1.53"
Flora$myPloidy[3295] <- 4

#Fallopia japonica
#4x
Flora$my2CDNA[1247] <- "4.85"
Flora$myPloidy[1247] <- 4
#8x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3296] <- Flora$species[1247]
Flora$my2CDNA[3296] <- "9.64"
Flora$myPloidy[3296] <- 8

#Fallopia sachaliensis
#4x
Flora$my2CDNA[1248] <- "4.32"
Flora$myPloidy[2148] <- 4
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3297] <- Flora$species[1248]
Flora$my2CDNA[3297] <- "6.42"
Flora$myPloidy[3297] <- 6
#8x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3298] <- Flora$species[1248]
Flora$my2CDNA[3298] <- "8.88"
Flora$myPloidy[3298] <- 8

#Festuca rubra
#6x
Flora$my2CDNA[1262] <- "13.68"
Flora$myPloidy[1262] <- 6
#8x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3299] <- Flora$species[1262]
Flora$my2CDNA[3299] <- "17.66"
Flora$myPloidy[3299] <- 8

#Festuca gigantea
#4x
Flora$my2CDNA[1265] <- "14.5"
Flora$myPloidy[1265] <- 4
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3300] <- Flora$species[1265]
Flora$my2CDNA[3300] <- "20.75"
Flora$myPloidy[3300] <- 6

#Festuca ovina
#2x
Flora$my2CDNA[1266] <- "4.83"
Flora$myPloidy[1266] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3301] <- Flora$species[1266]
Flora$my2CDNA[3301] <- "9.5"
Flora$myPloidy[3301] <- 4

#Festuca pratensis
#2x
Flora$my2CDNA[1268] <- "6.49"
Flora$myPloidy[1268] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3302] <- Flora$species[1268]
Flora$my2CDNA[3302] <- "13.01"
Flora$myPloidy[3302] <- 4

#Galanthus elwesii
#2x
Flora$my2CDNA[1314] <- "55.3"
Flora$myPloidy[1314] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3303] <- Flora$species[1314]
Flora$my2CDNA[3303] <- "106.6"
Flora$myPloidy[3303] <- 4
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3304] <- Flora$species[1314]
Flora$my2CDNA[3304] <- "157.4"
Flora$myPloidy[3304] <- 6

#Galanthus nivalis
#2x
Flora$my2CDNA[1317] <- "72.2"
Flora$myPloidy[1317] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3305] <- Flora$species[1317]
Flora$my2CDNA[3305] <- "105.3"
Flora$myPloidy[3305] <- 3

#Hepatica nobilis
#2x
Flora$my2CDNA[1456] <- "38.3"
Flora$myPloidy[1456] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3306] <- Flora$species[1456]
Flora$my2CDNA[3306] <- "89.2"
Flora$myPloidy[3306] <- 4

#Hieracium amplexicaule
#3x
Flora$my2CDNA[1469] <- "10.8"
Flora$myPloidy[1469] <- 3
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3307] <- Flora$species[1469]
Flora$my2CDNA[3307] <- "14.66"
Flora$myPloidy[3307] <- 4

#Hieracium prenanthoides
#2x
Flora$my2CDNA[1498] <- "7.29"
Flora$myPloidy[1498] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3308] <- Flora$species[1498]
Flora$my2CDNA[3308] <- "11.41"
Flora$myPloidy[3308] <- 3

#Holcus mollis
#4x
Flora$my2CDNA[1520] <- "5.55"
Flora$myPloidy[1520] <- 4
#5x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3309] <- Flora$species[1520]
Flora$my2CDNA[3309] <- "8.18"
Flora$myPloidy[3309] <- 5

#Hordeum murinum
#2x
Flora$my2CDNA[1531] <- "11.1"
Flora$myPloidy[1531] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3310] <- Flora$species[1531]
Flora$my2CDNA[3310] <- "22.2"
Flora$myPloidy[3310] <- 4
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3311] <- Flora$species[1531]
Flora$my2CDNA[3311] <- "29.85"
Flora$myPloidy[3311] <- 6

#Hyacinthus orientalis
#2x
Flora$my2CDNA[1548] <- "42.7"
Flora$myPloidy[1548] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3312] <- Flora$species[1548]
Flora$my2CDNA[3312] <- "64.7"
Flora$myPloidy[3312] <- 3
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3313] <- Flora$species[1548]
Flora$my2CDNA[3313] <- "93.2"
Flora$myPloidy[3313] <- 4

#Hydrangea macrophylla
#2x
Flora$my2CDNA[1549] <- "4.205"
Flora$my2CDNA_VAR[1549] <- 0.25205
Flora$myPloidy[1549] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3314] <- Flora$species[1549]
Flora$my2CDNA[3314] <- "6.66"
Flora$myPloidy[3314] <- 3

#Hypercium perforatum
#2x
Flora$my2CDNA[1571] <- "0.78"
Flora$myPloidy[1571] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3315] <- Flora$species[1571]
Flora$my2CDNA[3315] <- "1.62"
Flora$myPloidy[3315] <- 4

#Knautia arvensis
#2x
Flora$my2CDNA[1664] <- "7.38"
Flora$myPloidy[1664] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3316] <- Flora$species[1664]
Flora$my2CDNA[3316] <- "14.02"
Flora$myPloidy[3316] <- 4

#Koeleria macrantha
#2x
Flora$my2CDNA[1667] <- "4.85"
Flora$myPloidy[1667] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3317] <- Flora$species[1667]
Flora$my2CDNA[3317] <- "9.31"
Flora$myPloidy[3317] <- 4

#Lolium perenne
#2x
Flora$my2CDNA[1805] <- "5.36"
Flora$myPloidy[1805] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3318] <- Flora$species[1805]
Flora$my2CDNA[3318] <- "11.19"
Flora$myPloidy[3318] <- 4

#Lotus corniculatus
#2x
Flora$my2CDNA[1821] <- "1.17"
Flora$myPloidy[1821] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3319] <- Flora$species[1821]
Flora$my2CDNA[3319] <- "1.64"
Flora$myPloidy[3319] <- 3
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3320] <- Flora$species[1821]
Flora$my2CDNA[3320] <- "2.37"
Flora$myPloidy[3320] <- 4

#Luzula multiflora
#4x
Flora$my2CDNA[1841] <- "1.88"
Flora$myPloidy[1841] <- 4
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3321] <- Flora$species[1841]
Flora$my2CDNA[3321] <- "2.73"
Flora$myPloidy[3321] <- 6

#Medicago sativa
#2x
Flora$my2CDNA[1901] <- "1.72"
Flora$myPloidy[1901] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3322] <- Flora$species[1901]
Flora$my2CDNA[3322] <- "3.44"
Flora$myPloidy[3322] <- 4

#Mercurialis annua
#2x
Flora$my2CDNA[1933] <- "1.33"
Flora$myPloidy[1933] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3323] <- Flora$species[1933]
Flora$my2CDNA[3323] <- "2.6"
Flora$myPloidy[3323] <- 4
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3324] <- Flora$species[1933]
Flora$my2CDNA[3324] <- "3.9"
Flora$myPloidy[3324] <- 6

#Narcissus poeticus
#2x
Flora$my2CDNA[1992] <- "24.33"
Flora$myPloidy[1922] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3325] <- Flora$species[1992]
Flora$my2CDNA[3325] <- "34.55"
Flora$myPloidy[3325] <- 3

#Narcissus pseudonarcissus
#2x
Flora$my2CDNA[1993] <- "23.5"
Flora$myPloidy[1993] <- 2
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3326] <- Flora$species[1993]
Flora$my2CDNA[3326] <- "67.7"
Flora$myPloidy[3326] <- 6

#Paeonia mascula
#2x
Flora$my2CDNA[2118] <- "35.5"
Flora$myPloidy[2218] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3327] <- Flora$species[2218]
Flora$my2CDNA[3327] <- "58.5"
Flora$myPloidy[3327] <- 4

#Petrorhagia saxifraga
#2x
Flora$my2CDNA[2172] <- "1.3"
Flora$myPloidy[2172] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3328] <- Flora$species[2172]
Flora$my2CDNA[3328] <- "2.24"
Flora$myPloidy[3328] <- 4

#Phalaris arundinacea
#4x
Flora$my2CDNA[2180] <- "8.2"
Flora$myPloidy[2180] <- 4
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3329] <- Flora$species[2180]
Flora$my2CDNA[3329] <- "11.7"
Flora$myPloidy[3329] <- 6

#Picris hieracioides
#2x
Flora$my2CDNA[2219] <- "2.26"
Flora$myPloidy[2219] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3330] <- Flora$species[2219]
Flora$my2CDNA[3330] <- "4.72"
Flora$myPloidy[3330] <- 4

#Pratia angulata
#10x
Flora$my2CDNA[2361] <- "10.1"
Flora$myPloidy[2361] <- 10
#20x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3331] <- Flora$species[2361]
Flora$my2CDNA[3331] <-  "19.2"
Flora$myPloidy[3331] <- 20

#Salix viminalis
#2x
Flora$my2CDNA[2618] <- "0.82"
Flora$myPloidy[2618] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3332] <- Flora$species[2618]
Flora$my2CDNA[3332] <- "1.62"
Flora$myPloidy[3332] <- 4

#Saxifraga granulata
#2x
Flora$my2CDNA[2672] <- "1.35"
Flora$myPloidy[2672] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3333] <- Flora$species[2672]
Flora$my2CDNA[3333] <- "3.54"
Flora$myPloidy[3333] <- 4

#Sedum spurium
#2x
Flora$my2CDNA[2740] <- "3.54"
Flora$myPloidy[2740] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3334] <- Flora$species[2740]
Flora$my2CDNA[3334] <- "5.64"
Flora$myPloidy[3334] <- 3

#Senecio inaequidens
#2x
Flora$my2CDNA[2759] <- "1.15"
Flora$myPloidy[2759] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3335] <- Flora$species[2759]
Flora$my2CDNA[3335] <- "2.15"
Flora$myPloidy[3335] <- 4

#Solanum tuberosum
#2x
Flora$my2CDNA[2846] <- "1.77"
Flora$myPloidy[2846] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3336] <- Flora$species[2846]
Flora$my2CDNA[3336] <- "4.2"
Flora$myPloidy[3336] <- 4

#Sorbus torminalis
#2x
Flora$my2CDNA[2885] <- "1.61"
Flora$myPloidy[2885] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3337] <- Flora$species[2285]
Flora$my2CDNA[3337] <- "2.24"
Flora$myPloidy[3337] <- 3

#Sorghum bicolor
#2x
Flora$my2CDNA[2888] <- "1.5"
Flora$myPloidy[2888] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3338] <- Flora$species[2888]
Flora$my2CDNA[3338] <- "3.35"
Flora$myPloidy[3338] <- 4

#Tulipa gesneriana
#2x
Flora$my2CDNA[3065] <- "53.25"
Flora$myPloidy[3065] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3339] <- Flora$species[3065]
Flora$my2CDNA[3339] <- "81"
Flora$myPloidy[3339] <- 3

#Tulipa sylvestris
#2x
Flora$my2CDNA[3067] <- "62"
Flora$myPloidy[3067] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3340] <- Flora$species[3067]
Flora$my2CDNA[3340] <- "90.4"
Flora$myPloidy[3340] <- 3
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3341] <- Flora$species[3067]
Flora$my2CDNA[3341] <- "90.4"
Flora$myPloidy[3341] <- 4

#Valeriana officinalis
#2x
Flora$my2CDNA[3093] <- "2.97"
Flora$myPloidy[3093] <- 2
#8x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3342] <- Flora$species[3093]
Flora$my2CDNA[3342] <- "8.15"
Flora$myPloidy[3342] <- 8

#Vicia faba
#2x
Flora$my2CDNA[3159] <- "26.7"
Flora$myPloidy[3159] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3343] <- Flora$species[3159]
Flora$my2CDNA[3343] <- "54.8"
Flora$myPloidy[3343] <- 4

Flora$my2CDNA <- as.numeric(Flora$my2CDNA)

setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
save(Flora, file = "Flora_cleaned")
