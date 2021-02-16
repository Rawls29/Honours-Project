rm(list=ls())
Flora = read.delim('C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes/finalFlat-Copy.csv', sep='|', na.strings=c("","NA","nan", "NaN", "Na"))
Flora <- Flora

#Create a column for cleaned 2C data
Flora$my2CDNA <- Flora$X2C.DNA.content..pg.

#Create a column for 2C variance
Flora$my2CDNA_VAR = NA

#Creat a column for ploidy
Flora$myPloidy = NA

#Adding new family entries
Flora$family[12:13] <- "acanthaceae"
Flora$family[29:30] <- "acoraceae"
Flora$family[216] <- "aizoaceae"
Flora$family[589:591] <- "aizoaceae"
Flora$family[1021] <- "aizoaceae"
Flora$family[1035] <- "aizoaceae"
Flora$family[1140] <- "aizoaceae"
Flora$family[1691:1692] <- "aizoaceae"
Flora$family[2093] <- "aizoaceae"
Flora$family[2571] <- "aizoaceae"
Flora$family[2986] <- "aizoaceae"
Flora$family[90:92] <- "alismataceae"
Flora$family[337] <- "alismataceae"
Flora$family[974] <- "alismataceae"
Flora$family[1836] <- "alismataceae"
Flora$family[2584:2587] <- "alismataceae"
Flora$family[125] <- "alstroemeriaceae"
Flora$family[130:147] <- "amaranthaceae"
Flora$family[312:323] <- "amaranthaceae"
Flora$family[345] <- "amaranthaceae"
Flora$family[361:364] <- "amaranthaceae"
Flora$family[670:675] <- "amaranthaceae"
Flora$family[677:682] <- "amaranthaceae"
Flora$family[684:695] <- "amaranthaceae"
Flora$family[779] <- "amaranthaceae"
Flora$family[676] <- "amaranthaceae"
Flora$family[683] <- "amaranthaceae"
Flora$family[689] <- "amaranthaceae"
Flora$family[1051:1052] <- "amaranthaceae"
Flora$family[2588:2594] <- "amaranthaceae"
Flora$family[2639:2640] <- "amaranthaceae"
Flora$family[269] <- "amaranthaceae"
Flora$family[2908] <- "amaranthaceae"
Flora$family[2946:2947] <- "amaranthaceae"
Flora$family[42] <- "amaryllidaceae"
Flora$family[94:113] <- "amaryllidaceae"
Flora$family[148] <- "amaryllidaceae"
Flora$family[1313:1321] <- "amaryllidaceae"
Flora$family[3242] <- "amaryllidaceae"
Flora$family[3243] <- "amaryllidaceae"
Flora$family[1755:1757] <- "amaryllidaceae"
Flora$family[1988:1999] <- "amaryllidaceae"
Flora$family[3250:3252] <- "amaryllidaceae"
Flora$family[2006] <- "amaryllidaceae"
Flora$family[2024] <- "amaryllidaceae"
Flora$family[2120] <- "amaryllidaceae"
Flora$family[3057] <- "amaryllidaceae"
Flora$family[2469] <- "anacardiaceae"
Flora$family[36] <- "apiaceae"
Flora$family[41] <- "apiaceae"
Flora$family[3220] <- "apiaceae"
Flora$family[153:154] <- "apiaceae"
Flora$family[184:186] <- "apiaceae"
Flora$family[201:203] <- "apiaceae"
Flora$family[211:214] <- "apiaceae"
Flora$family[309] <- "apiaceae"
Flora$family[360] <- "apiaceae"
Flora$family[436:442] <- "apiaceae"
Flora$family[594:595] <- "apiaceae"
Flora$family[603] <- "apiaceae"
Flora$family[656:658] <- "apiaceae"
Flora$family[724] <- "apiaceae"
Flora$family[764:765] <- "apiaceae"
Flora$family[778] <- "apiaceae"
Flora$family[898] <- "apiaceae"
Flora$family[928] <- "apiaceae"
Flora$family[981:983] <- "apiaceae"
Flora$family[1181:1184] <- "apiaceae"
Flora$family[1243] <- "apiaceae"
Flora$family[1254] <- "apiaceae"
Flora$family[1283] <- "apiaceae"
Flora$family[1457:1459] <- "apiaceae"
Flora$family[1591] <- "apiaceae"
Flora$family[1759] <- "apiaceae"
Flora$family[1937] <- "apiaceae"
Flora$family[1985] <- "apiaceae"
Flora$family[2032:2038] <- "apiaceae"
Flora$family[2147] <- "apiaceae"
Flora$family[2173:2174] <- "apiaceae"
Flora$family[2176:2177] <- "apiaceae"
Flora$family[2209] <- "apiaceae"
Flora$family[2230:2231] <- "apiaceae"
Flora$family[2480] <- "apiaceae"
Flora$family[2655] <- "apiaceae"
Flora$family[2691] <- "apiaceae"
Flora$family[2745] <- "apiaceae"
Flora$family[2778] <- "apiaceae"
Flora$family[2794] <- "apiaceae"
Flora$family[2818] <- "apiaceae"
Flora$family[2832:2834] <- "apiaceae"
Flora$family[3012] <- "apiaceae"
Flora$family[601:602] <- "apiaceae"
Flora$family[604] <- "apiaceae"
Flora$family[3014] <- "apiaceae"
Flora$family[3054] <- "apiaceae"
Flora$family[3175:3191] <- "apocynaceae"
Flora$family[215] <- "aponogetonaceae"
Flora$family[1584:1585] <- "aquifoliaceae"
Flora$family[247] <- "araceae"
Flora$family[270:271] <- "araceae"
Flora$family[3221] <- "araceae"
Flora$family[459] <- "araceae"
Flora$family[1034] <- "araceae"
Flora$family[1727:1729] <- "araceae"
Flora$family[1731] <- "araceae"
Flora$family[1858:1859] <- "araceae"
Flora$family[1730] <- "araceae"
Flora$family[3215] <- "araceae"
Flora$family[230:232] <- "araliaceae"
Flora$family[1253] <- "araliaceae"
Flora$family[1435:1437] <- "araliaceae"
Flora$family[1552:1554] <- "araliaceae"
Flora$family[233] <- "araucariaceae"
Flora$family[249:250] <- "aristolochiaceae"
Flora$family[277] <- "aristolochiaceae"
Flora$family[43] <- "asparagaceae"
Flora$family[278] <- "asparagaceae"
Flora$family[768] <- "asparagaceae"
Flora$family[776] <- "asparagaceae"
Flora$family[1089] <- "asparagaceae"
Flora$family[1545:1548] <- "asparagaceae"
Flora$family[1873:1874] <- "asparagaceae"
Flora$family[1964:1967] <- "asparagaceae"
Flora$family[2074:2076] <- "asparagaceae"
Flora$family[2285:2288] <- "asparagaceae"
Flora$family[2454] <- "asparagaceae"
Flora$family[2572:2573] <- "asparagaceae"
Flora$family[697:699] <- "asparagaceae"
Flora$family[2700:2707] <- "asparagaceae"
Flora$family[3212] <- "asparagaceae"
Flora$family[1454] <- "asphodelaceae"
Flora$family[1665] <- "asphodelaceae"
Flora$family[3246] <- "asphodelaceae"
Flora$family[2198:2199] <- "asphodelaceae"
Flora$family[2812] <- "asphodelaceae"
Flora$family[284:293] <- "aspleniaceae"
Flora$family[310:311] <- "aspleniaceae"
Flora$family[377] <- "aspleniaceae"
Flora$family[3222] <- "aspleniaceae"
Flora$family[954:956] <- "aspleniaceae"
Flora$family[1425:1426] <- "aspleniaceae"
Flora$family[1890] <- "aspleniaceae"
Flora$family[3253] <- "aspleniaceae"
Flora$family[2072] <- "aspleniaceae"
Flora$family[2187] <- "aspleniaceae"
Flora$family[2997] <- "aspleniaceae"
Flora$family[3202:3203] <- "aspleniaceae"
Flora$family[31] <- "asteraceae"
Flora$family[1676] <- "asteraceae"
Flora$family[1587:1590] <- "balsaminaceae"
Flora$family[348:357] <- "berberidaceae"
Flora$family[1871:1872] <- "berberidaceae"
Flora$family[114:118] <- "betulaceae"
Flora$family[366:368] <- "betulaceae"
Flora$family[588] <- "betulaceae"
Flora$family[797:800] <- "betulaceae"
Flora$family[161:162] <- "boraginaceae"
Flora$family[171:174] <- "boraginaceae"
Flora$family[176] <- "boraginaceae"
Flora$family[279] <- "boraginaceae"
Flora$family[381:382] <- "boraginaceae"
Flora$family[427] <- "boraginaceae"
Flora$family[944:946] <- "boraginaceae"
Flora$family[1061:1063] <- "boraginaceae"
Flora$family[1693] <- "boraginaceae"
Flora$family[433] <- "boraginaceae"
Flora$family[435] <- "boraginaceae"
Flora$family[1797] <- "boraginaceae"
Flora$family[1968:1976] <- "boraginaceae"
Flora$family[2050] <- "boraginaceae"
Flora$family[175] <- "boraginaceae"
Flora$family[2178] <- "boraginaceae"
Flora$family[2250] <- "boraginaceae"
Flora$family[2399:2402] <- "boraginaceae"
Flora$family[2952:2962] <- "boraginaceae"
Flora$family[3015] <- "boraginaceae"
Flora$family[1935] <- "boraginaceae"
Flora$family[2116] <- "brassicaceae"
Flora$family[228] <- "brassicaceae"
Flora$family[1252] <- "bromeliaceae"
Flora$family[2029] <- "bromeliaceae"
Flora$family[443] <- "butomaceae"
Flora$family[444] <- "buxaceae"
Flora$family[2117] <- "buxaceae"
Flora$family[445] <- "cabombaceae"
Flora$family[456] <- "calceolariaceae"
Flora$family[481:493] <-  "campanulaceae"
Flora$family[495] <-  "campanulaceae"
Flora$family[1029] <-  "campanulaceae"
Flora$family[1622] <-  "campanulaceae"
Flora$family[1725:1726] <-  "campanulaceae"
Flora$family[1800:1802] <-  "campanulaceae"
Flora$family[2210:2212] <-  "campanulaceae"
Flora$family[2361] <-  "campanulaceae"
Flora$family[3013] <-  "campanulaceae"
Flora$family[496] <- "cannabaceae"
Flora$family[1543] <- "cannabaceae"
Flora$family[626:627] <- "caprifoliaceae"
Flora$family[631] <- "caprifoliaceae"
Flora$family[1014:1020] <- "caprifoliaceae"
Flora$family[1664] <- "caprifoliaceae"
Flora$family[1760] <- "caprifoliaceae"
Flora$family[1789] <- "caprifoliaceae"
Flora$family[1810:1819] <- "caprifoliaceae"
Flora$family[2688:2690] <- "caprifoliaceae"
Flora$family[2949:2951] <- "caprifoliaceae"
Flora$family[3092:3099] <- "caprifoliaceae"
Flora$family[3200] <- "caprifoliaceae"
Flora$family[52] <- "caryophyllaceae"
Flora$family[241:245] <- "caryophyllaceae"
Flora$family[168] <- "caryophyllaceae"
Flora$family[632:644] <- "caryophyllaceae"
Flora$family[790] <- "caryophyllaceae"
Flora$family[990:999] <- "caryophyllaceae"
Flora$family[1427] <- "caryophyllaceae"
Flora$family[1462:1464] <- "caryophyllaceae"
Flora$family[1523] <- "caryophyllaceae"
Flora$family[1525] <- "caryophyllaceae"
Flora$family[1586] <- "caryophyllaceae"
Flora$family[1850] <- "caryophyllaceae"
Flora$family[696] <- "caryophyllaceae"
Flora$family[1948:1952] <- "caryophyllaceae"
Flora$family[1954:1955] <- "caryophyllaceae"
Flora$family[1977] <- "caryophyllaceae"
Flora$family[1671:1672] <- "caryophyllaceae"
Flora$family[2172] <- "caryophyllaceae"
Flora$family[2280] <- "caryophyllaceae"
Flora$family[2575:2583] <- "caryophyllaceae"
Flora$family[2657:2658] <- "caryophyllaceae"
Flora$family[2710:2711] <- "caryophyllaceae"
Flora$family[922] <- "caryophyllaceae"
Flora$family[1846:1849] <- "caryophyllaceae"
Flora$family[2795:2810] <- "caryophyllaceae"
Flora$family[2901:2907] <- "caryophyllaceae"
Flora$family[2935:2942] <- "caryophyllaceae"
Flora$family[3087] <- "caryophyllaceae"
Flora$family[608] <- "celastraceae"
Flora$family[1194:1196] <- "celastraceae"
Flora$family[2142] <- "celastraceae"
Flora$family[650:651] <- "ceratophyllaceae"
Flora$family[1440:1442] <- "cistaceae"
Flora$family[3064] <- "cistaceae"
Flora$family[760] <- "colchicaceae"
Flora$family[3016:3017] <- "commelinaceae"
Flora$family[472:478] <- "convolvulaceae"
Flora$family[769] <- "convolvulaceae"
Flora$family[930:932] <- "convolvulaceae"
Flora$family[1002] <- "convolvulaceae"
Flora$family[1597:1599] <- "convolvulaceae"
Flora$family[663] <- "cornaceae"
Flora$family[780:783] <- "cornaceae"
Flora$family[37] <-  "crassulaceae"
Flora$family[874:877] <-  "crassulaceae"
Flora$family[2466] <-  "crassulaceae"
Flora$family[2726:2743] <-  "crassulaceae"
Flora$family[2747:2748] <-  "crassulaceae"
Flora$family[871] <-  "crassulaceae"
Flora$family[428] <- "cucurbitaceae"
Flora$family[923:926] <- "cucurbitaceae"
Flora$family[1053] <- "cucurbitaceae"
Flora$family[738] <- "cucurbitaceae"
Flora$family[659:660] <- "cupressaceae"
Flora$family[921] <- "cupressaceae"
Flora$family[929] <- "cupressaceae"
Flora$family[1656] <- "cupressaceae"
Flora$family[2775:2776] <- "cupressaceae"
Flora$family[3002] <- "cupressaceae"
Flora$family[3211] <- "cupressaceae"
Flora$family[1003] <- "cyatheaceae"
Flora$family[378:380] <- "cyperaceae"
Flora$family[516:586] <- "cyperaceae"
Flora$family[739] <- "cyperaceae"
Flora$family[949:951] <- "cyperaceae"
Flora$family[1070:1077] <- "cyperaceae"
Flora$family[1160:1163] <- "cyperaceae"
Flora$family[1166] <- "cyperaceae"
Flora$family[2470:2471] <- "cyperaceae"
Flora$family[2695:2699] <- "cyperaceae"
Flora$family[1522] <- "cyperaceae"
Flora$family[2708:2709] <- "cyperaceae"
Flora$family[2391] <- "dennstaedtiaceae"
Flora$family[1000] <- "diapensiaceae"
Flora$family[2969] <- "dioscorea"
Flora$family[1036:1038] <- "droseraceae"
Flora$family[1066:1067] <- "elaeagnaceae"
Flora$family[1515] <- "elaeagnaceae"
Flora$family[1068:1069] <- "elatinaceae"
Flora$family[1124:1132] <- "equisetaceae"
Flora$family[177] <- "ericaceae"
Flora$family[234] <- "ericaceae"
Flora$family[238:239] <- "ericaceae"
Flora$family[468] <- "ericaceae"
Flora$family[961] <- "ericaceae"
Flora$family[1088] <- "ericaceae"
Flora$family[1141:1150] <- "ericaceae"
Flora$family[1349:1352] <- "ericaceae"
Flora$family[1657:1660] <- "ericaceae"
Flora$family[1723] <- "ericaceae"
Flora$family[1957:1958] <- "ericaceae"
Flora$family[2091] <- "ericaceae"
Flora$family[2204] <- "ericaceae"
Flora$family[2405:2407] <- "ericaceae"
Flora$family[2467:2468] <- "ericaceae"
Flora$family[2110:2112] <- "ericaceae"
Flora$family[3088:3091] <- "ericaceae"
Flora$family[1158] <- "eriocaulaceae"
Flora$family[1188] <- "escalloniaceae"
Flora$family[1198:1220] <- "euphorbiaceae"
Flora$family[3239:3240] <- "euphorbiaceae"
Flora$family[1933:1934] <- "euphorbiaceae"
Flora$family[2479] <- "euphorbiaceae"
Flora$family[6] <- "fabaceae"
Flora$family[204:206] <- "fabaceae"
Flora$family[304:308] <- "fabaceae"
Flora$family[718] <- "fabaceae"
Flora$family[761:762] <- "fabaceae"
Flora$family[784:785] <- "fabaceae"
Flora$family[927] <- "fabaceae"
Flora$family[957:960] <- "fabaceae"
Flora$family[1323] <- "fabaceae"
Flora$family[1354:1359] <- "fabaceae"
Flora$family[1410] <- "fabaceae"
Flora$family[1513:1514] <- "fabaceae"
Flora$family[1673:1675] <- "fabaceae"
Flora$family[1700:1715] <- "fabaceae"
Flora$family[1732] <- "fabaceae"
Flora$family[1820:1824] <- "fabaceae"
Flora$family[1828:1835] <- "fabaceae"
Flora$family[1895:1904] <- "fabaceae"
Flora$family[1911:1915] <- "fabaceae"
Flora$family[2051:2058] <- "fabaceae"
Flora$family[2077:2080] <- "fabaceae"
Flora$family[2114:2115] <- "fabaceae"
Flora$family[2185:2186] <- "fabaceae"
Flora$family[2247] <- "fabaceae"
Flora$family[2481] <- "fabaceae"
Flora$family[2713] <- "fabaceae"
Flora$family[786] <- "fabaceae"
Flora$family[2900] <- "fabaceae"
Flora$family[2987] <- "fabaceae"
Flora$family[2998] <- "fabaceae"
Flora$family[156:159] <- "fabaceae"
Flora$family[471] <- "fabaceae"
Flora$family[709:712] <- "fabaceae"
Flora$family[1244] <- "fabaceae"
Flora$family[1322] <- "fabaceae"
Flora$family[2135] <- "fabaceae"
Flora$family[3027:3048] <- "fabaceae"
Flora$family[3051:3053] <- "fabaceae"
Flora$family[3071:3073] <- "fabaceae"
Flora$family[3155:3173] <- "fabaceae"
Flora$family[596] <- "fagaceae"
Flora$family[1242] <- "fagaceae"
Flora$family[2413:2419] <- "fagaceae"
Flora$family[1289] <- "frankeniaceae"
Flora$family[326] <- "garryaceae"
Flora$family[376] <- "gentianaceae"
Flora$family[621:625] <- "gentianaceae"
Flora$family[717] <- "gentianaceae"
Flora$family[1361] <- "gentianaceae"
Flora$family[1364:1367] <- "gentianaceae"
Flora$family[1369] <- "gentianaceae"
Flora$family[1360] <- "gentianaceae"
Flora$family[1362] <- "gentianaceae"
Flora$family[1365] <- "gentianaceae"
Flora$family[1368] <- "gentianaceae"
Flora$family[1370] <- "gentianaceae"
Flora$family[1363] <- "gentianaceae"
Flora$family[1164:1175] <- "geraniaceae"
Flora$family[3238] <- "geraniaceae"
Flora$family[1371:1395] <- "geraniaceae"
Flora$family[1959] <- "geraniaceae"
Flora$family[3256] <- "geraniaceae"
Flora$family[2421] <- "gesneriaceae"
Flora$family[1419] <- "griseliniaceae"
Flora$family[2472:2478] <- "grossilariaceae"
Flora$family[1422:1423] <- "gunneraceae"
Flora$family[1981:1984] <- "haloragaceae"
Flora$family[989] <- "hydrangeaceae"
Flora$family[1549] <- "hydrangeaceae"
Flora$family[2188:2189] <- "hydrangeaceae"
Flora$family[1064] <- "hydrocharitaceae"
Flora$family[1083:1085] <- "hydrocharitaceae"
Flora$family[1550:1551] <- "hydrocharitaceae"
Flora$family[1682] <- "hydrocharitaceae"
Flora$family[1986:1987] <- "hydrocharitaceae"
Flora$family[2945] <- "hydrocharitaceae"
Flora$family[3100] <- "hydrocharitaceae"
Flora$family[1555:1556] <- "hymenophyllaceae"
Flora$family[3025] <- "hymenophyllaceae"
Flora$family[1558:1576] <- "hyperiaceae"
Flora$family[248] <- "iridaceae"
Flora$family[666] <- "iridaceae"
Flora$family[899:918] <- "iridaceae"
Flora$family[3225:3227] <- "iridaceae"
Flora$family[1291] <- "iridaceae"
Flora$family[1400:1401] <- "iridaceae"
Flora$family[1461] <- "iridaceae"
Flora$family[1600:1612] <- "iridaceae"
Flora$family[1620:1621] <- "iridaceae"
Flora$family[1761] <- "iridaceae"
Flora$family[2483] <- "iridaceae"
Flora$family[2827:2831] <- "iridaceae"
Flora$family[2890] <- "iridaceae"
Flora$family[2199] <- "iridaceae"
Flora$family[1614:1618] <- "isoetaceae"
Flora$family[1626] <- "juglandaceae"
Flora$family[2392] <- "juglandaceae"
Flora$family[1626:1655] <- "juncaceae"
Flora$family[1837:1845] <- "juncaceae"
Flora$family[3049:3050] <- "juncaginaceae"
Flora$family[70:72] <- "lamiaceae"
Flora$family[338] <- "lamiaceae"
Flora$family[365] <- "lamiaceae"
Flora$family[25] <- "lamiaceae"
Flora$family[452:455] <- "lamiaceae"
Flora$family[1325:1329] <- "lamiaceae"
Flora$family[1404] <- "lamiaceae"
Flora$family[1580] <- "lamiaceae"
Flora$family[1324] <- "lamiaceae"
Flora$family[3247] <- "lamiaceae"
Flora$family[1685:1690] <- "lamiaceae"
Flora$family[1717] <- "lamiaceae"
Flora$family[1736] <- "lamiaceae"
Flora$family[1856] <- "lamiaceae"
Flora$family[1887] <- "lamiaceae"
Flora$family[1916:1931] <- "lamiaceae"
Flora$family[2010:2011] <- "lamiaceae"
Flora$family[2073] <- "lamiaceae"
Flora$family[2195:2196] <- "lamiaceae"
Flora$family[2370:2372] <- "lamiaceae"
Flora$family[2512] <- "lamiaceae"
Flora$family[2641:2647] <- "lamiaceae"
Flora$family[2663] <- "lamiaceae"
Flora$family[2720:2723] <- "lamiaceae"
Flora$family[2926:2933] <- "lamiaceae"
Flora$family[2988:2991] <- "lamiaceae"
Flora$family[3003:3006] <- "lamiaceae"
Flora$family[1716] <- "lauraceae"
Flora$family[2232:2234] <- "lentibulariaceae"
Flora$family[3081:3086] <- "lentibulariaceae"
Flora$family[1187] <- "liliaceae"
Flora$family[1292] <- "liliaceae"
Flora$family[1310:1311] <- "liliaceae"
Flora$family[1767:1768] <- "liliaceae"
Flora$family[1799] <- "liliaceae"
Flora$family[3065:3067] <- "liliaceae"
Flora$family[1769] <- "limnanthaceae"
Flora$family[1790:1793] <- "linaceae"
Flora$family[2420] <- "linaceae"
Flora$family[1009:1010] <- "lycopodiaceae"
Flora$family[1544] <- "lycopodiaceae"
Flora$family[1749] <-"lycopodiaceae"
Flora$family[1854:1855] <- "lycopodiaceae"
Flora$family[1867:1870] <- "lythraceae"
Flora$family[5] <- "malvaceae"
Flora$family[73] <- "malvaceae"
Flora$family[127] <- "malvaceae"
Flora$family[1467] <- "malvaceae"
Flora$family[1518] <- "malvaceae"
Flora$family[1721] <- "malvaceae"
Flora$family[126] <- "malvaceae"
Flora$family[1718:1720] <- "malvaceae"
Flora$family[1722] <- "malvaceae"
Flora$family[1879:1886] <- "malvaceae"
Flora$family[2789:2791] <- "malvaceae"
Flora$family[3007:3009] <- "malvaceae"
Flora$family[2229] <- "marsileaceae"
Flora$family[2141] <- "melanthiaceae"
Flora$family[1932] <- "menyanthaceae"
Flora$family[1857] <- "menyanthaceae"
Flora$family[742:743] <- "montiaceae"
Flora$family[1960:1961] <- "montiaceae"
Flora$family[1273] <- "moraceae"
Flora$family[1962] <- "moraceae"
Flora$family[1979:1980] <- "myricaceae"
Flora$family[1190:1193] <- "myricaceae"
Flora$family[1751:1752] <- "myrtaceae"
Flora$family[1826] <- "myrtaceae"
Flora$family[2002] <- "nartheciaceae"
Flora$family[2021:2023] <- "nothofagaceae"
Flora$family[2025:2028] <- "nymphaceae"
Flora$family[1284] <- "oleaceae"
Flora$family[1290] <- "oleaceae"
Flora$family[1623:1625] <- "oleaceae"
Flora$family[1765:1766] <- "oleaceae"
Flora$family[2963] <- "oleaceae"
Flora$family[662] <- "onagraceae"
Flora$family[725:727] <- "onagraceae"
Flora$family[740:741] <- "onagraceae"
Flora$family[1090:1115] <- "onagraceae"
Flora$family[3229:3237] <- "onagraceae"
Flora$family[1293:1294] <- "onagraceae"
Flora$family[1825] <- "onagraceae"
Flora$family[2039:2045] <- "onagraceae"
Flora$family[383] <- "ophioglossaceae"
Flora$family[2061:2063] <- "ophioglossaceae"
Flora$family[163:165] <- "orchidaceae"
Flora$family[628:630] <- "orchidaceae"
Flora$family[756] <- "orchidaceae"
Flora$family[775] <- "orchidaceae"
Flora$family[952] <- "orchidaceae"
Flora$family[965:972] <- "orchidaceae"
Flora$family[1116:1123] <- "orchidaceae"
Flora$family[1417] <- "orchidaceae"
Flora$family[1424] <- "orchidaceae"
Flora$family[1429] <- "orchidaceae"
Flora$family[1460] <- "orchidaceae"
Flora$family[1512] <- "orchidaceae"
Flora$family[1794] <- "orchidaceae"
Flora$family[2007:2009] <- "orchidaceae"
Flora$family[1795] <- "orchidaceae"
Flora$family[1797] <- "orchidaceae"
Flora$family[2064:2071] <- "orchidaceae"
Flora$family[20] <- "orchidaceae"
Flora$family[2258:2259] <- "orchidaceae"
Flora$family[1758] <- "orchidaceae"
Flora$family[2923] <- "orchidaceae"
Flora$family[343] <- "orobanchaceae"
Flora$family[1221:1240] <- "orobanchaceae"
Flora$family[1698:1699] <- "orobanchaceae"
Flora$family[1905:1908] <- "orobanchaceae"
Flora$family[2030] <- "orobanchaceae"
Flora$family[2081:2090] <- "orobanchaceae"
Flora$family[2138] <- "orobanchaceae"
Flora$family[2149:2150] <- "orobanchaceae"
Flora$family[2464:2465] <- "orobanchaceae"
Flora$family[2094] <- "osmundaceae"
Flora$family[2096:2109] <- "oxalidaceae"
Flora$family[2118:2119] <- "paeoniaceae"
Flora$family[2148] <- "paulowniaceae"
Flora$family[1941:1947] <- "phrymaceae"
Flora$family[2213:2214] <- "phytolaccaceae"
Flora$family[1:4] <- "pinaceae"
Flora$family[605:607] <- "pinaceae"
Flora$family[1696:1697] <- "pinaceae"
Flora$family[3248] <- "pinaceae"
Flora$family[2215:2218] <- "pinaceae"
Flora$family[2235:2246] <- "pinaceae"
Flora$family[2390] <- "pinaceae"
Flora$family[3063] <- "pinaceae"
Flora$family[2248:2249] <- "pittosporaceae"
Flora$family[207] <- "plantaginaceae"
Flora$family[276] <- "plantaginaceae"
Flora$family[461:467] <- "plantaginaceae"
Flora$family[654:655] <- "plantaginaceae"
Flora$family[937:940] <- "plantaginaceae"
Flora$family[3228] <- "plantaginaceae"
Flora$family[1004:1005] <- "plantaginaceae"
Flora$family[1157] <- "plantaginaceae"
Flora$family[1433] <- "plantaginaceae"
Flora$family[3244:3245] <- "plantaginaceae"
Flora$family[1516] <- "plantaginaceae"
Flora$family[1662:1663] <- "plantaginaceae"
Flora$family[1776:1788] <- "plantaginaceae"
Flora$family[1798] <- "plantaginaceae"
Flora$family[208] <- "plantaginaceae"
Flora$family[1953] <- "plantaginaceae"
Flora$family[2251:2257] <- "plantaginaceae"
Flora$family[2788] <- "plantaginaceae"
Flora$family[1430:1434] <- "plantaginaceae"
Flora$family[3123:3149] <- "plantaginaceae"
Flora$family[3270:3271] <- "plantaginaceae"
Flora$family[2260] <- "platanaceae"
Flora$family[251] <- "plumbaginaceae"
Flora$family[1770:1775] <- "plumbaginaceae"
Flora$family[187:192] <- "poaceae"
Flora$family[2197] <- "polemoniaceae"
Flora$family[2279] <- "polemoniaceae"
Flora$family[2281:2284] <- "polygalaceae"
Flora$family[1241] <- "polygonaceae"
Flora$family[375] <- "polygonaceae"
Flora$family[1245:1250] <- "polygonaceae"
Flora$family[3241] <- "polygonaceae"
Flora$family[1670] <- "polygonaceae"
Flora$family[1963] <- "polygonaceae"
Flora$family[2151:2167] <- "polygonaceae"
Flora$family[2289:2296] <- "polygonaceae"
Flora$family[2462:2463] <- "polygonaceae"
Flora$family[2536:2568] <- "polygonaceae"
Flora$family[3262] <- "polygonaceae"
Flora$family[953] <- "polypodiaceae"
Flora$family[1040:1049] <- "polypodiaceae"
Flora$family[3257] <- "polypodiaceae"
Flora$family[2297:2299] <- "polypodiaceae"
Flora$family[2302:2304] <- "polypodiaceae"
Flora$family[3258] <- "polypodiaceae"
Flora$family[2305] <- "pontederiaceae"
Flora$family[2321] <- "portulaceae"
Flora$family[1420] <- "potamogentonaceae"
Flora$family[2322:2342] <- "potamogentonaceae"
Flora$family[3214] <- "potamogentonaceae"
Flora$family[166:167] <- "primulaceae"
Flora$family[169] <- "primulaceae"
Flora$family[933:935] <- "primulaceae"
Flora$family[1403] <- "primulaceae"
Flora$family[1542] <- "primulaceae"
Flora$family[1860:1866] <- "primulaceae"
Flora$family[2362:2369] <- "primulaceae"
Flora$family[2652] <- "primulaceae"
Flora$family[3026] <- "primulaceae"
Flora$family[33] <- "pteridaceae"
Flora$family[193] <- "pteridaceae"
Flora$family[920] <- "pteridaceae"
Flora$family[3259] <- "pteridaceae"
Flora$family[26:27] <- "ranunculaceae"
Flora$family[32] <- "ranunculaceae"
Flora$family[34] <- "ranunculaceae"
Flora$family[178:183] <- "ranunculaceae"
Flora$family[217:218] <- "ranunculaceae"
Flora$family[470] <- "ranunculaceae"
Flora$family[744:748] <- "ranunculaceae"
Flora$family[767] <- "ranunculaceae"
Flora$family[1139] <- "ranunculaceae"
Flora$family[1272] <- "ranunculaceae"
Flora$family[1448:1451] <- "ranunculaceae"
Flora$family[1456] <- "ranunculaceae"
Flora$family[1978] <- "ranunculaceae"
Flora$family[2019] <- "ranunculaceae"
Flora$family[181] <- "ranunculaceae"
Flora$family[2422:2446] <- "ranunculaceae"
Flora$family[3260:3261] <- "ranunculaceae"
Flora$family[2992:2996] <- "ranunculaceae"
Flora$family[3060] <- "ranunculaceae"
Flora$family[2455:2459] <- "resedaceae"
Flora$family[1288] <- "rhamnaceae"
Flora$family[2460:2461] <- "rhamnaceae"
Flora$family[7:11] <- "rosaceae"
Flora$family[46:47] <- "rosaceae"
Flora$family[74:75] <- "rosaceae"
Flora$family[77:83] <- "rosaceae"
Flora$family[85:89] <- "rosaceae"
Flora$family[152] <- "rosaceae"
Flora$family[76] <- "rosaceae"
Flora$family[84] <- "rosaceae"
Flora$family[45] <- "rosaceae"
Flora$family[254] <- "rosaceae"
Flora$family[272] <- "rosaceae"
Flora$family[652:653] <- "rosaceae"
Flora$family[763] <- "rosaceae"
Flora$family[803:866] <- "rosaceae"
Flora$family[3223] <- "rosaceae"
Flora$family[878:888] <- "rosaceae"
Flora$family[3224] <- "rosaceae"
Flora$family[936] <- "rosaceae"
Flora$family[1039] <- "rosaceae"
Flora$family[1280:1282] <- "rosaceae"
Flora$family[1285:1287] <- "rosaceae"
Flora$family[1397:1399] <- "rosaceae"
Flora$family[1521] <- "rosaceae"
Flora$family[1661] <- "rosaceae"
Flora$family[1876:1878] <- "rosaceae"
Flora$family[1936] <- "rosaceae"
Flora$family[2031] <- "rosaceae"
Flora$family[2208] <- "rosaceae"
Flora$family[1050] <- "rosaceae"
Flora$family[2343:2356] <- "rosaceae"
Flora$family[2358] <- "rosaceae"
Flora$family[2373:2388] <- "rosaceae"
Flora$family[2403:2404] <- "rosaceae"
Flora$family[2408:2411] <- "rosaceae"
Flora$family[2490:2511] <- "rosaceae"
Flora$family[2515:2516] <- "rosaceae"
Flora$family[2518:2533] <- "rosaceae"
Flora$family[2359:2360] <- "rosaceae"
Flora$family[2653:2654] <- "rosaceae"
Flora$family[2357] <- "rosaceae"
Flora$family[2860:2887] <- "rosaceae"
Flora$family[2909:2921] <- "rosaceae"
Flora$family[3268] <- "rosaceae"
Flora$family[2200] <- "rosaceae"
Flora$family[280:281] <- "rubiaceae"
Flora$family[283] <- "rubiaceae"
Flora$family[774] <- "rubiaceae"
Flora$family[919] <- "rubiaceae"
Flora$family[282] <- "rubiaceae"
Flora$family[1332:1345] <- "rubiaceae"
Flora$family[2202] <- "rubiaceae"
Flora$family[2514] <- "rubiaceae"
Flora$family[2787] <- "rubiaceae"
Flora$family[2569:2570] <- "ruppiaceae"
Flora$family[703] <- "rutaceae"
Flora$family[789] <- "rutaceae"
Flora$family[2306:2320] <- "salicaceae"
Flora$family[2595:2637] <- "salicaceae"
Flora$family[3263] <- "salicaceae"
Flora$family[335] <- "salviniaceae"
Flora$family[2999] <- "santalaceae"
Flora$family[3192] <- "santalaceae"
Flora$family[14:19] <- "sapindaceae"
Flora$family[38:40] <- "sapindaceae"
Flora$family[1669] <- "sapindaceae"
Flora$family[2659] <- "sarraceniaceae"
Flora$family[302:303] <- "saxifragaceae"
Flora$family[358] <- "saxifragaceae"
Flora$family[715:716] <- "saxifragaceae"
Flora$family[978] <- "saxifragaceae"
Flora$family[1466] <- "saxifragaceae"
Flora$family[2482] <- "saxifragaceae"
Flora$family[2665:2687] <- "saxifragaceae"
Flora$family[3265] <- "saxifragaceae"
Flora$family[2985] <- "saxifragaceae"
Flora$family[3011] <- "saxifragaceae"
Flora$family[2692] <- "scheuchzeriaceae"
Flora$family[2715:2719] <- "scorphulariaceae"
Flora$family[429:432] <- "scorphulariaceae"
Flora$family[2203] <- "scorphulariaceae"
Flora$family[3101:3119] <- "scorphulariaceae"
Flora$family[2744] <- "selaginellaceae"
Flora$family[3265] <- "selaginellaceae"
Flora$family[67] <- "simaroubaceae"
Flora$family[324] <- "solanaceae"
Flora$family[500] <- "solanaceae"
Flora$family[979:980] <- "solanaceae"
Flora$family[1557] <- "solanaceae"
Flora$family[1596] <- "solanaceae"
Flora$family[1851:1853] <- "solanaceae"
Flora$family[2013:2018] <- "solanaceae"
Flora$family[2175] <- "solanaceae"
Flora$family[2205:2207] <- "solanaceae"
Flora$family[2638] <- "solanaceae"
Flora$family[2835:2849] <- "solanaceae"
Flora$family[3266:3267] <- "solanaceae"
Flora$family[2934] <- "staphyleaceae"
Flora$family[2967:2968] <- "tamaricaceae"
Flora$family[2982] <- "taxaceae"
Flora$family[976:977] <- "thymelaeaceae"
Flora$family[3010] <- "tofieldiaceae"
Flora$family[3061:3062] <- "tropaeolaceae"
Flora$family[2891:2894] <- "typhaceae"
Flora$family[3069:3070] <- "typhaceae"
Flora$family[3074:3077] <- "ulmaceae"
Flora$family[2139:2140] <- "urticaceae"
Flora$family[1453] <- "urticaceae"
Flora$family[3079:3080] <- "urticaceae"
Flora$family[3120:3122] <- "verbenaceae"
Flora$family[35] <- "vibumaceae"
Flora$family[2648:2651] <- "viburnaceae"
Flora$family[3150:3154] <- "viburnaceae"
Flora$family[2143:2145] <- "vitaceae"
Flora$family[3193] <- "vitaceae"
Flora$family[3217:3219] <- "zosteraceae"

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
Flora$genus[3275] <- Flora$genus[14]
Flora$family[3275] <- Flora$family[14]
Flora$my2CDNA[3275] <- "2.7"
Flora$myPloidy[3275] <- 4

#Elytrigia repens
#6x
Flora$my2CDNA[51] <- "23.37"
Flora$myPloidy[51] <- 6
#9x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3276] <- Flora$species[51]
Flora$genus[3276] <- Flora$genus[51]
Flora$family[3276] <- Flora$family[51]
Flora$my2CDNA[3276] <- "34.91"
Flora$myPloidy[3276] <- 9

#Allium sphaerocephalon
#2x
Flora$my2CDNA[108] <- "23.8"
Flora$myPloidy[108] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3277] <- Flora$species[108]
Flora$genus[3277] <- Flora$genus[108]
Flora$family[3277] <- Flora$family[108]
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
Flora$genus[3278] <- Flora$genus[115]
Flora$family[3278] <- Flora$family[115]
Flora$my2CDNA[3278] <- "2.01"
Flora$myPloidy[3278] <- 4

#Arabidposis aenosa
#2x
Flora$my2CDNA[219] <- "0.4"
Flora$myPloidy[219] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3279] <- Flora$species[219]
Flora$genus[3279] <- Flora$genus[219]
Flora$family[3279] <- Flora$family[219]
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
Flora$genus[3280] <- Flora$genus[261]
Flora$family[3280] <- Flora$family[261]
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
Flora$genus[3281] <- Flora$genus[262]
Flora$family[3281] <- Flora$family[262]
Flora$my2CDNA[3281] <- "10.24"
Flora$my2CDNA_VAR[3281] <- 4.9928
Flora$myPloidy[3281] <- 4
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3282] <- Flora$species[262]
Flora$genus[3282] <- Flora$genus[262]
Flora$family[3282] <- Flora$family[262]
Flora$my2CDNA[3282] <- "15.71"
Flora$myPloidy[3282] <- 6
#8x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3283] <- Flora$species[262]
Flora$genus[3283] <- Flora$genus[262]
Flora$family[3283] <- Flora$family[262]
Flora$my2CDNA[3283] <- "15.91"
Flora$myPloidy[3283] <- 8
#10x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3284] <- Flora$species[262]
Flora$genus[3284] <- Flora$genus[262]
Flora$family[3284] <- Flora$family[262]
Flora$my2CDNA[3284] <- "24.58"
Flora$myPloidy[3284] <- 10

#Asplenium trichomanes
#2x
Flora$my2CDNA[292] <- "8.54"
Flora$myPloidy[292] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3285] <- Flora$species[292]
Flora$genus[3285] <- Flora$genus[292]
Flora$family[3285] <- Flora$family[292]
Flora$my2CDNA[3285] <- "12.2"
Flora$myPloidy[3285] <- 3
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3286] <- Flora$species[292]
Flora$genus[3286] <- Flora$genus[292]
Flora$family[3286] <- Flora$family[292]
Flora$my2CDNA[3286] <- "18.11"
Flora$myPloidy[3286] <- 4

#Atriplex halimus
#2x
Flora$my2CDNA[313] <- "2.44"
Flora$myPloidy[313] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3287] <- Flora$species[313]
Flora$genus[3287] <- Flora$genus[313]
Flora$family[3287] <- Flora$family[313]
Flora$my2CDNA[3287] <- "4.77"
Flora$myPloidy[3287] <-  4

#Callitriche stagnalis
#2x
Flora$my2CDNA[466] <- "2.99"
Flora$myPloidy[466] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3288] <- Flora$species[466]
Flora$genus[3288] <- Flora$genus[466]
Flora$family[3288] <- Flora$family[466]
Flora$my2CDNA[3288] <- "4.55"
Flora$myPloidy[3288] <- 3

#Campanula rotundifolia
#2x
Flora$my2CDNA[482] <- "2.19"
Flora$myPloidy[482] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3289] <- Flora$species[482]
Flora$genus[3289] <- Flora$genus[482]
Flora$family[3289] <- Flora$family[482]
Flora$my2CDNA[3289] <- "4.66"
Flora$myPloidy[3289] <- 4

#Centaurea scabiosa
#2x
Flora$my2CDNA[618] <- "3.36"
Flora$myPloidy[618] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3290] <- Flora$species[618]
Flora$genus[3290] <- Flora$genus[618]
Flora$family[3290] <- Flora$family[618]
Flora$my2CDNA[3290] <- "4.59"
Flora$myPloidy[3290] <- 4

#Chenopodium album
#2x
Flora$my2CDNA[669] <- "1.53"
Flora$myPloidy[669] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3291] <- Flora$species[669]
Flora$genus[3291] <- Flora$genus[669]
Flora$family[3291] <- Flora$family[669]
Flora$my2CDNA[3291] <- "3.26"
Flora$myPloidy[3291] <- 4
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3292] <- Flora$species[669]
Flora$genus[3292] <- Flora$genus[669]
Flora$family[3292] <- Flora$family[669]
Flora$my2CDNA[3292] <- "4.7"
Flora$myPloidy[3292] <- 6

#Leucanthemum vulgare
#2x
Flora$my2CDNA[705] <- "10.54"
Flora$myPloidy[705] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3293] <- Flora$species[705]
Flora$genus[3293] <- Flora$genus[705]
Flora$family[3293] <- Flora$family[705]
Flora$my2CDNA[3293] <- "20.2"
Flora$myPloidy[3293] <- 4
#8x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3294] <- Flora$species[705]
Flora$genus[3294] <- Flora$genus[705]
Flora$family[3294] <- Flora$family[705]
Flora$my2CDNA[3294] <- "32.69"
Flora$myPloidy[3294] <- 8

#Fallopia dumetorum
#2x
Flora$my2CDNA[1246] <- "0.7"
Flora$myPloidy[1246] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3295] <- Flora$species[1246]
Flora$genus[3295] <- Flora$genus[1246]
Flora$family[3295] <- Flora$family[1246]
Flora$my2CDNA[3295] <- "1.53"
Flora$myPloidy[3295] <- 4

#Fallopia japonica
#4x
Flora$my2CDNA[1247] <- "4.85"
Flora$myPloidy[1247] <- 4
#8x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3296] <- Flora$species[1247]
Flora$genus[3296] <- Flora$genus[1247]
Flora$family[3296] <- Flora$family[1247]
Flora$my2CDNA[3296] <- "9.64"
Flora$myPloidy[3296] <- 8

#Fallopia sachaliensis
#4x
Flora$my2CDNA[1248] <- "4.32"
Flora$myPloidy[2148] <- 4
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3297] <- Flora$species[1248]
Flora$genus[3297] <- Flora$genus[1248]
Flora$family[3297] <- Flora$family[1248]
Flora$my2CDNA[3297] <- "6.42"
Flora$myPloidy[3297] <- 6
#8x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3298] <- Flora$species[1248]
Flora$genus[3298] <- Flora$genus[1248]
Flora$family[3298] <- Flora$family[1248]
Flora$my2CDNA[3298] <- "8.88"
Flora$myPloidy[3298] <- 8

#Festuca rubra
#6x
Flora$my2CDNA[1262] <- "13.68"
Flora$myPloidy[1262] <- 6
#8x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3299] <- Flora$species[1262]
Flora$genus[3299] <- Flora$genus[1262]
Flora$family[3299] <- Flora$family[1262]
Flora$my2CDNA[3299] <- "17.66"
Flora$myPloidy[3299] <- 8

#Festuca gigantea
#4x
Flora$my2CDNA[1265] <- "14.5"
Flora$myPloidy[1265] <- 4
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3300] <- Flora$species[1265]
Flora$genus[3300] <- Flora$genus[1265]
Flora$family[3300] <- Flora$family[1265]
Flora$my2CDNA[3300] <- "20.75"
Flora$myPloidy[3300] <- 6

#Festuca ovina
#2x
Flora$my2CDNA[1266] <- "4.83"
Flora$myPloidy[1266] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3301] <- Flora$species[1266]
Flora$genus[3301] <- Flora$genus[1266]
Flora$family[3301] <- Flora$family[1266]
Flora$my2CDNA[3301] <- "9.5"
Flora$myPloidy[3301] <- 4

#Festuca pratensis
#2x
Flora$my2CDNA[1268] <- "6.49"
Flora$myPloidy[1268] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3302] <- Flora$species[1268]
Flora$genus[3302] <- Flora$genus[1268]
Flora$family[3302] <- Flora$family[1268]
Flora$my2CDNA[3302] <- "13.01"
Flora$myPloidy[3302] <- 4

#Galanthus elwesii
#2x
Flora$my2CDNA[1314] <- "55.3"
Flora$myPloidy[1314] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3303] <- Flora$species[1314]
Flora$genus[3303] <- Flora$genus[1314]
Flora$family[3303] <- Flora$family[1314]
Flora$my2CDNA[3303] <- "106.6"
Flora$myPloidy[3303] <- 4
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3304] <- Flora$species[1314]
Flora$genus[3304] <- Flora$genus[1314]
Flora$family[3304] <- Flora$family[1314]
Flora$my2CDNA[3304] <- "157.4"
Flora$myPloidy[3304] <- 6

#Galanthus nivalis
#2x
Flora$my2CDNA[1317] <- "72.2"
Flora$myPloidy[1317] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3305] <- Flora$species[1317]
Flora$genus[3305] <- Flora$genus[1317]
Flora$family[3305] <- Flora$family[1317]
Flora$my2CDNA[3305] <- "105.3"
Flora$myPloidy[3305] <- 3

#Hepatica nobilis
#2x
Flora$my2CDNA[1456] <- "38.3"
Flora$myPloidy[1456] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3306] <- Flora$species[1456]
Flora$genus[3306] <- Flora$genus[1456]
Flora$family[3306] <- Flora$family[1456]
Flora$my2CDNA[3306] <- "89.2"
Flora$myPloidy[3306] <- 4

#Hieracium amplexicaule
#3x
Flora$my2CDNA[1469] <- "10.8"
Flora$myPloidy[1469] <- 3
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3307] <- Flora$species[1469]
Flora$genus[3307] <- Flora$genus[1469]
Flora$family[3307] <- Flora$family[1469]
Flora$my2CDNA[3307] <- "14.66"
Flora$myPloidy[3307] <- 4

#Hieracium prenanthoides
#2x
Flora$my2CDNA[1498] <- "7.29"
Flora$myPloidy[1498] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3308] <- Flora$species[1498]
Flora$genus[3308] <- Flora$genus[1498]
Flora$family[3308] <- Flora$family[1498]
Flora$my2CDNA[3308] <- "11.41"
Flora$myPloidy[3308] <- 3

#Holcus mollis
#4x
Flora$my2CDNA[1520] <- "5.55"
Flora$myPloidy[1520] <- 4
#5x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3309] <- Flora$species[1520]
Flora$genus[3309] <- Flora$genus[1520]
Flora$family[3309] <- Flora$family[1520]
Flora$my2CDNA[3309] <- "8.18"
Flora$myPloidy[3309] <- 5

#Hordeum murinum
#2x
Flora$my2CDNA[1531] <- "11.1"
Flora$myPloidy[1531] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3310] <- Flora$species[1531]
Flora$genus[3310] <- Flora$genus[1531]
Flora$family[3310] <- Flora$family[1531]
Flora$my2CDNA[3310] <- "22.2"
Flora$myPloidy[3310] <- 4
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3311] <- Flora$species[1531]
Flora$genus[3311] <- Flora$genus[1531]
Flora$family[3311] <- Flora$family[1531]
Flora$my2CDNA[3311] <- "29.85"
Flora$myPloidy[3311] <- 6

#Hyacinthus orientalis
#2x
Flora$my2CDNA[1548] <- "42.7"
Flora$myPloidy[1548] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3312] <- Flora$species[1548]
Flora$genus[3312] <- Flora$genus[1548]
Flora$family[3312] <- Flora$family[1548]
Flora$my2CDNA[3312] <- "64.7"
Flora$myPloidy[3312] <- 3
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3313] <- Flora$species[1548]
Flora$genus[3313] <- Flora$genus[1548]
Flora$family[3313] <- Flora$family[1548]
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
Flora$genus[3314] <- Flora$genus[1549]
Flora$family[3314] <- Flora$family[1549]
Flora$my2CDNA[3314] <- "6.66"
Flora$myPloidy[3314] <- 3

#Hypercium perforatum
#2x
Flora$my2CDNA[1571] <- "0.78"
Flora$myPloidy[1571] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3315] <- Flora$species[1571]
Flora$genus[3315] <- Flora$genus[1571]
Flora$family[3315] <- Flora$family[1571]
Flora$my2CDNA[3315] <- "1.62"
Flora$myPloidy[3315] <- 4

#Knautia arvensis
#2x
Flora$my2CDNA[1664] <- "7.38"
Flora$myPloidy[1664] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3316] <- Flora$species[1664]
Flora$genus[3316] <- Flora$genus[1664]
Flora$family[3316] <- Flora$family[1664]
Flora$my2CDNA[3316] <- "14.02"
Flora$myPloidy[3316] <- 4

#Koeleria macrantha
#2x
Flora$my2CDNA[1667] <- "4.85"
Flora$myPloidy[1667] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3317] <- Flora$species[1667]
Flora$genus[3317] <- Flora$genus[1667]
Flora$family[3317] <- Flora$family[1667]
Flora$my2CDNA[3317] <- "9.31"
Flora$myPloidy[3317] <- 4

#Lolium perenne
#2x
Flora$my2CDNA[1805] <- "5.36"
Flora$myPloidy[1805] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3318] <- Flora$species[1805]
Flora$genus[3318] <- Flora$genus[1805]
Flora$family[3318] <- Flora$family[1805]
Flora$my2CDNA[3318] <- "11.19"
Flora$myPloidy[3318] <- 4

#Lotus corniculatus
#2x
Flora$my2CDNA[1821] <- "1.17"
Flora$myPloidy[1821] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3319] <- Flora$species[1821]
Flora$genus[3319] <- Flora$genus[1821]
Flora$family[3319] <- Flora$family[1821]
Flora$my2CDNA[3319] <- "1.64"
Flora$myPloidy[3319] <- 3
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3320] <- Flora$species[1821]
Flora$genus[3320] <- Flora$genus[1821]
Flora$family[3320] <- Flora$family[1821]
Flora$my2CDNA[3320] <- "2.37"
Flora$myPloidy[3320] <- 4

#Luzula multiflora
#4x
Flora$my2CDNA[1841] <- "1.88"
Flora$myPloidy[1841] <- 4
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3321] <- Flora$species[1841]
Flora$genus[3321] <- Flora$genus[1841]
Flora$family[3321] <- Flora$family[1841]
Flora$my2CDNA[3321] <- "2.73"
Flora$myPloidy[3321] <- 6

#Medicago sativa
#2x
Flora$my2CDNA[1901] <- "1.72"
Flora$myPloidy[1901] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3322] <- Flora$species[1901]
Flora$genus[3322] <- Flora$genus[1901]
Flora$family[3322] <- Flora$family[1901]
Flora$my2CDNA[3322] <- "3.44"
Flora$myPloidy[3322] <- 4

#Mercurialis annua
#2x
Flora$my2CDNA[1933] <- "1.33"
Flora$myPloidy[1933] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3323] <- Flora$species[1933]
Flora$genus[3323] <- Flora$genus[1933]
Flora$family[3323] <- Flora$family[1933]
Flora$my2CDNA[3323] <- "2.6"
Flora$myPloidy[3323] <- 4
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3324] <- Flora$species[1933]
Flora$genus[3324] <- Flora$genus[1933]
Flora$family[3324] <- Flora$family[1933]
Flora$my2CDNA[3324] <- "3.9"
Flora$myPloidy[3324] <- 6

#Narcissus poeticus
#2x
Flora$my2CDNA[1992] <- "24.33"
Flora$myPloidy[1922] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3325] <- Flora$species[1992]
Flora$genus[3325] <- Flora$genus[1992]
Flora$family[3325] <- Flora$family[1992]
Flora$my2CDNA[3325] <- "34.55"
Flora$myPloidy[3325] <- 3

#Narcissus pseudonarcissus
#2x
Flora$my2CDNA[1993] <- "23.5"
Flora$myPloidy[1993] <- 2
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3326] <- Flora$species[1993]
Flora$genus[3326] <- Flora$genus[1993]
Flora$family[3326] <- Flora$family[1993]
Flora$my2CDNA[3326] <- "67.7"
Flora$myPloidy[3326] <- 6

#Paeonia mascula
#2x
Flora$my2CDNA[2118] <- "35.5"
Flora$myPloidy[2218] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3327] <- Flora$species[2218]
Flora$genus[3327] <- Flora$genus[2218]
Flora$family[3327] <- Flora$family[2218]
Flora$my2CDNA[3327] <- "58.5"
Flora$myPloidy[3327] <- 4

#Petrorhagia saxifraga
#2x
Flora$my2CDNA[2172] <- "1.3"
Flora$myPloidy[2172] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3328] <- Flora$species[2172]
Flora$genus[3328] <- Flora$genus[2172]
Flora$family[3328] <- Flora$family[2172]
Flora$my2CDNA[3328] <- "2.24"
Flora$myPloidy[3328] <- 4

#Phalaris arundinacea
#4x
Flora$my2CDNA[2180] <- "8.2"
Flora$myPloidy[2180] <- 4
#6x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3329] <- Flora$species[2180]
Flora$genus[3329] <- Flora$genus[2180]
Flora$family[3329] <- Flora$family[2180]
Flora$my2CDNA[3329] <- "11.7"
Flora$myPloidy[3329] <- 6

#Picris hieracioides
#2x
Flora$my2CDNA[2219] <- "2.26"
Flora$myPloidy[2219] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3330] <- Flora$species[2219]
Flora$genus[3330] <- Flora$genus[2219]
Flora$family[3330] <- Flora$family[2219]
Flora$my2CDNA[3330] <- "4.72"
Flora$myPloidy[3330] <- 4

#Pratia angulata
#10x
Flora$my2CDNA[2361] <- "10.1"
Flora$myPloidy[2361] <- 10
#20x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3331] <- Flora$species[2361]
Flora$genus[3331] <- Flora$genus[2361]
Flora$family[3331] <- Flora$family[2361]
Flora$my2CDNA[3331] <-  "19.2"
Flora$myPloidy[3331] <- 20

#Salix viminalis
#2x
Flora$my2CDNA[2618] <- "0.82"
Flora$myPloidy[2618] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3332] <- Flora$species[2618]
Flora$genus[3332] <- Flora$genus[2618]
Flora$family[3332] <- Flora$family[2618]
Flora$my2CDNA[3332] <- "1.62"
Flora$myPloidy[3332] <- 4

#Saxifraga granulata
#2x
Flora$my2CDNA[2672] <- "1.35"
Flora$myPloidy[2672] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3333] <- Flora$species[2672]
Flora$genus[3333] <- Flora$genus[2672]
Flora$family[3333] <- Flora$family[2672]
Flora$my2CDNA[3333] <- "3.54"
Flora$myPloidy[3333] <- 4

#Sedum spurium
#2x
Flora$my2CDNA[2740] <- "3.54"
Flora$myPloidy[2740] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3334] <- Flora$species[2740]
Flora$genus[3334] <- Flora$genus[2740]
Flora$family[3334] <- Flora$family[2740]
Flora$my2CDNA[3334] <- "5.64"
Flora$myPloidy[3334] <- 3

#Senecio inaequidens
#2x
Flora$my2CDNA[2759] <- "1.15"
Flora$myPloidy[2759] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3335] <- Flora$species[2759]
Flora$genus[3335] <- Flora$genus[2759]
Flora$family[3335] <- Flora$family[2759]
Flora$my2CDNA[3335] <- "2.15"
Flora$myPloidy[3335] <- 4

#Solanum tuberosum
#2x
Flora$my2CDNA[2846] <- "1.77"
Flora$myPloidy[2846] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3336] <- Flora$species[2846]
Flora$genus[3336] <- Flora$genus[2846]
Flora$family[3336] <- Flora$family[2846]
Flora$my2CDNA[3336] <- "4.2"
Flora$myPloidy[3336] <- 4

#Sorbus torminalis
#2x
Flora$my2CDNA[2885] <- "1.61"
Flora$myPloidy[2885] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3337] <- Flora$species[2285]
Flora$genus[3337] <- Flora$genus[2285]
Flora$family[3337] <- Flora$family[2285]
Flora$my2CDNA[3337] <- "2.24"
Flora$myPloidy[3337] <- 3

#Sorghum bicolor
#2x
Flora$my2CDNA[2888] <- "1.5"
Flora$myPloidy[2888] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3338] <- Flora$species[2888]
Flora$genus[3338] <- Flora$genus[2888]
Flora$family[3338] <- Flora$family[2888]
Flora$my2CDNA[3338] <- "3.35"
Flora$myPloidy[3338] <- 4

#Tulipa gesneriana
#2x
Flora$my2CDNA[3065] <- "53.25"
Flora$myPloidy[3065] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3339] <- Flora$species[3065]
Flora$genus[3339] <- Flora$genus[3065]
Flora$family[3339] <- Flora$family[3065]
Flora$my2CDNA[3339] <- "81"
Flora$myPloidy[3339] <- 3

#Tulipa sylvestris
#2x
Flora$my2CDNA[3067] <- "62"
Flora$myPloidy[3067] <- 2
#3x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3340] <- Flora$species[3067]
Flora$genus[3340] <- Flora$genus[3067]
Flora$family[3340] <- Flora$family[3067]
Flora$my2CDNA[3340] <- "90.4"
Flora$myPloidy[3340] <- 3
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3341] <- Flora$species[3067]
Flora$genus[3341] <- Flora$genus[3067]
Flora$family[3341] <- Flora$family[3067]
Flora$my2CDNA[3341] <- "90.4"
Flora$myPloidy[3341] <- 4

#Valeriana officinalis
#2x
Flora$my2CDNA[3093] <- "2.97"
Flora$myPloidy[3093] <- 2
#8x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3342] <- Flora$species[3093]
Flora$genus[3342] <- Flora$genus[3093]
Flora$family[3342] <- Flora$family[3093]
Flora$my2CDNA[3342] <- "8.15"
Flora$myPloidy[3342] <- 8

#Vicia faba
#2x
Flora$my2CDNA[3159] <- "26.7"
Flora$myPloidy[3159] <- 2
#4x
Flora[nrow(Flora)+1,] <- NA
Flora$species[3343] <- Flora$species[3159]
Flora$genus[3343] <- Flora$genus[3159]
Flora$family[3343] <- Flora$family[3159]
Flora$my2CDNA[3343] <- "54.8"
Flora$myPloidy[3343] <- 4

#Making 2CDNA numeric
Flora$my2CDNA <- as.numeric(Flora$my2CDNA)

#Adding to families
#Replacing Compositae with Asteraceae
Flora$family[21:24] <- "asteraceae"
Flora$family[44] <- "asteraceae"
Flora$family[149:151] <- "asteraceae"
Flora$family[170] <- "asteraceae"
Flora$family[194:198] <- "asteraceae"
Flora$family[235:237] <- "asteraceae"
Flora$family[240] <- "asteraceae"
Flora$family[253] <- "asteraceae"
Flora$family[257:268] <- "asteraceae"
Flora$family[294] <- "asteraceae"
Flora$family[296:301] <- "asteraceae"
Flora$family[336] <- "asteraceae"
Flora$family[347] <- "asteraceae"
Flora$family[369:374] <- "asteraceae"
Flora$family[385:387] <- "asteraceae"
Flora$family[457:458] <- "asteraceae"
Flora$family[460] <- "asteraceae"
Flora$family[469] <- "asteraceae"
Flora$family[512:515] <- "asteraceae"
Flora$family[587] <- "asteraceae"
Flora$family[592:593] <- "asteraceae"
Flora$family[598] <- "asteraceae"
Flora$family[610:620] <- "asteraceae"
Flora$family[661] <- "asteraceae"
Flora$family[713:714] <- "asteraceae"
Flora$family[719:723] <- "asteraceae"
Flora$family[728:737] <- "asteraceae"
Flora$family[770:773] <- "asteraceae"
Flora$family[777] <- "asteraceae"
Flora$family[802] <- "asteraceae"
Flora$family[867:870] <- "asteraceae"
Flora$family[229] <- "asteraceae"
Flora$family[889:897] <- "asteraceae"
Flora$family[941] <- "asteraceae"
Flora$family[973] <- "asteraceae"
Flora$family[984] <- "asteraceae"
Flora$family[1022:1028] <- "asteraceae"
Flora$family[1058:1060] <- "asteraceae"
Flora$family[1151:1156] <- "asteraceae"
Flora$family[1197] <- "asteraceae"
Flora$family[1275:1279] <- "asteraceae"
Flora$family[1312] <- "asteraceae"
Flora$family[1330:1331] <- "asteraceae"
Flora$family[1353] <- "asteraceae"
Flora$family[1396] <- "asteraceae"
Flora$family[704] <- "asteraceae"
Flora$family[709] <- "asteraceae"
Flora$family[1274] <- "asteraceae"
Flora$family[1411:1416] <- "asteraceae"
Flora$family[1418] <- "asteraceae"
Flora$family[1421] <- "asteraceae"
Flora$family[1438:1439] <- "asteraceae"
Flora$family[1443:1447] <- "asteraceae"
Flora$family[1452] <- "asteraceae"
Flora$family[1468:1471] <- "asteraceae"
Flora$family[1473:1480] <- "asteraceae"
Flora$family[1482:1494] <- "asteraceae"
Flora$family[1496] <- "asteraceae"
Flora$family[1498:1510] <- "asteraceae"
Flora$family[1524] <- "asteraceae"
Flora$family[1577:1579] <- "asteraceae"
Flora$family[1592:1595] <- "asteraceae"
Flora$family[1619] <- "asteraceae"
Flora$family[1677:1681] <- "asteraceae"
Flora$family[1694:1695] <- "asteraceae"
Flora$family[1733:1735] <- "asteraceae"
Flora$family[1753:1754] <- "asteraceae"
Flora$family[705] <- "asteraceae"
Flora$family[1762:1763] <- "asteraceae"
Flora$family[664:665] <- "asteraceae"
Flora$family[2046:2049] <- "asteraceae"
Flora$family[2059:2060] <- "asteraceae"
Flora$family[2095] <- "asteraceae"
Flora$family[2151] <- "asteraceae"
Flora$family[2168:2171] <- "asteraceae"
Flora$family[2219] <- "asteraceae"
Flora$family[1472] <- "asteraceae"
Flora$family[1481] <- "asteraceae"
Flora$family[1495] <- "asteraceae"
Flora$family[1497] <- "asteraceae"
Flora$family[2220:2228] <- "asteraceae"
Flora$family[2397:2398] <- "asteraceae"
Flora$family[2534:2535] <- "asteraceae"
Flora$family[2656] <- "asteraceae"
Flora$family[2664] <- "asteraceae"
Flora$family[2694] <- "asteraceae"
Flora$family[2712] <- "asteraceae"
Flora$family[2714] <- "asteraceae"
Flora$family[2749:2751] <- "asteraceae"
Flora$family[2753:2774] <- "asteraceae"
Flora$family[2777] <- "asteraceae"
Flora$family[2792] <- "asteraceae"
Flora$family[2793] <- "asteraceae"
Flora$family[2811] <- "asteraceae"
Flora$family[2813] <- "asteraceae"
Flora$family[2850:2859] <- "asteraceae"
Flora$family[295] <- "asteraceae"
Flora$family[2964:2966] <- "asteraceae"
Flora$family[706] <- "asteraceae"
Flora$family[708] <- "asteraceae"
Flora$family[2970:2981] <- "asteraceae"
Flora$family[2984] <- "asteraceae"
Flora$family[2752] <- "asteraceae"
Flora$family[3018:3021] <- "asteraceae"
Flora$family[1888:1889] <- "asteraceae"
Flora$family[3055] <- "asteraceae"
Flora$family[3068] <- "asteraceae"
Flora$family[3198] <- "asteraceae"
Flora$family[3208:3210] <- "asteraceae"
Flora$family[707] <- "asteraceae"
Flora$family[3280:3284] <- "asteraceae"
Flora$family[3290] <- "asteraceae"
Flora$family[3293:3294] <- "asteraceae"
Flora$family[3307:3308] <- "asteraceae"
Flora$family[3330] <- "asteraceae"
Flora$family[3335] <- "asteraceae"

setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
save(Flora, file = "Flora_cleaned.Rda")

#Making a manageable dataset
rm(list=ls())
#Loading my cleaned dataset
setwd("C:/Users/samra/Documents/My Documents/Uni/4th Year/Honours Project/R Codes")
load(file = "Flora_cleaned.Rda")

species <- Flora$species
genus <- Flora$genus
family <- Flora$family
Fert3 <- Flora$myFert3
Fert5 <- Flora$myFert5
FertGen <- Flora$myFertGen
Range <- Flora$myPlantAtRange
x2CDNA <- Flora$my2CDNA
x2CDNA_VAR <- Flora$my2CDNA_VAR
Ploidy <- Flora$myPloidy

Small_Flora <- data.frame(species, genus, family, Fert3, Fert5, FertGen, Range, x2CDNA, x2CDNA_VAR, Ploidy)

save(Small_Flora, file = "Small_Flora.Rda")