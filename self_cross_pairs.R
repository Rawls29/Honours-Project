self_cross_pairs <- data.frame(pair=c(1, 2, 3, 4, 5, 6, 
                                      7, 8, 9, 10, 11, 12, 
                                      13),
                               self_species=c("A_arvensis", "C_damasonium", 
                                              "E_phyllanthes", "L_nissolia",
                                              "L_campestris", "L_portula",
                                              "P_vulgaris", "S_tridactylites",
                                              "S_vulgaris", "S_pallida", 
                                              "T_dubium", "T_fragiferum",
                                              "V_kitaibeliana"),
                               cross_species=c("A_tenella", "C_longifolia",
                                               "E_atrorubens", "L_pratensis",
                                               "L_forsteri", "L_salicaria",
                                               "P_dysenterica", "S_granulata",
                                               "S_jacobaea", "S_neglecta",
                                               "T_campestre", "T_repens",
                                               "V_riviniana"),
                               genus=c("Anagallis", "Cephalanthera",
                                       "Epipactis", "Lathyrus",
                                       "Luzula", "Lythrum",
                                       "Pulicaria", "Saxifraga",
                                       "Senecio", "Stellaria", 
                                       "Trifolium", "Trifolium",
                                       "Viola"),
                               family=c("Primulaceae", "Orchidaceae",
                                        "Orchidaceae", "Fabaceae",
                                        "Juncaceae", "Lythraceae",
                                        "Asteraceae", "Saxifragaceae",
                                        "Asteraceae", "Caryophyllaceae",
                                        "Fabaceae", "Fabaceae",
                                        "Violaceae"),
                               self_range=c(2583, 233, 143, 568, 3579, 1590, 
                                            126, 1312, 3586, 633, 3504, 810,
                                            10),
                               cross_range=c(1926, 162, 73, 3589, 314, 2527, 
                                             1902, 981, 3721, 779, 2391, 3793,
                                             3723),
                               self_euro_med_regions=c(51, 33, 9, 34, 34, 45,
                                                       44, 50, 58, 40, 35, 51,
                                                       40),
                               cross_euro_med_regions=c(22, 39, 28, 42, 30, 51,
                                                        46, 33, 40, 35, 52, 51,
                                                        49),
                               both_annual=c("N", "N", "N", "N", "N", "N",
                                             "N", "N", "N", "N", "Y", "N",
                                             "N"),
                               both_perennial=c("N", "Y", "Y", "N", "Y", "N",
                                                "N", "N", "N", "N", "N", "Y",
                                                "N"),
                               a_p_pair=c("Y", "N", "N", "Y", "N", "Y",
                                          "Y", "Y", "Y", "Y", "N", "N",
                                          "Y"))
self_cross_pairs$range_diff <- self_cross_pairs$self_range-self_cross_pairs$cross_range
self_cross_pairs$regions_diff <- self_cross_pairs$self_euro_med_regions-self_cross_pairs$cross_euro_med_regions

reduced_pairs <- self_cross_pairs[-c(which(self_cross_pairs$a_p_pair=="Y")),]
reduced_pairs$number <- c(1, 2, 3, 4, 5)

library(ggplot2)
ggplot(data= self_cross_pairs, aes(x=pair, y=range_diff, fill=genus))+
  geom_bar(stat="identity")
ggplot(data= self_cross_pairs, aes(x=pair, y=regions_diff, fill=genus))+
  geom_bar(stat="identity")

library(ggplot2)
ggplot(data= reduced_pairs, aes(x=number, y=range_diff, fill=genus))+
  geom_bar(stat="identity")
ggplot(data= reduced_pairs, aes(x=number, y=regions_diff, fill=genus))+
  geom_bar(stat="identity")