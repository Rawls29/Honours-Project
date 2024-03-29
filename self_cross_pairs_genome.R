rm(list=ls())
self_cross_pairs_genome <- data.frame(self_species=c("Briza minor",
                                                     "Callitriche brutia",
                                                     "Cephalanthera damasonium",
                                                     "Juncus squarrosus",
                                                     "Luzula campestris",
                                                     "Orobanche minor",
                                                     "Papaver dubium",
                                                     "Senecio vulgaris",
                                                     "Trifolium dubium",
                                                     "Trifolium fragiferum",
                                                     "Trifolium glomeratum",
                                                     "Veronica polita"),
                                      cross_species=c("Briza media",
                                                      "Callitriche stagnalis",
                                                      "Cephalanthera longifolia",
                                                      "Juncus bufonius",
                                                      "Luzula forsteri",
                                                      "Orobanche caryophylacea",
                                                      "Papaver rhoeas",
                                                      "Senecio squalidus",
                                                      "Trifolium campestre",
                                                      "Trifolium hybridum",
                                                      "Trifolium repens",
                                                      "veronia chamaedrys"),
                                      genus=c("Briza",
                                              "Callitriche",
                                              "Cephalanthera",
                                              "Juncus",
                                              "Luzula",
                                              "Orobanche",
                                              "Papaver",
                                              "Senecio",
                                              "Trifolium",
                                              "Trifolium",
                                              "Trifolium",
                                              "Veronica"),
                                      self_2c=c(5.8,
                                                5.46,
                                                32.8,
                                                0.61,
                                                0.97,
                                                3.66,
                                                8.2,
                                                3,
                                                2.1,
                                                1.07,
                                                0.78,
                                                0.84),
                                      cross_2c=c(13,
                                                 2.99,
                                                 33.5,
                                                 2.6,
                                                 1.4,
                                                 7.13,
                                                 4.81,
                                                 1.8,
                                                 0.9,
                                                 2.17,
                                                 3,
                                                 2.98),
                                      pair=c("B. minor - B. media",
                                             "C. brutia - C. stagnalis",
                                             "C. damasonium - C. longifolia",
                                             "J. squarrosus - J. bufonius",
                                             "L. campestris - L. forsteri",
                                             "O. minor - O. caryophylaceae",
                                             "P. dubium - P. rhoeas",
                                             "S. vulgaris - S. squalidus",
                                             "T. dubium - T. campestre",
                                             "T. fragigerum - T. hybridum",
                                             "T. glomeratum - T. repens",
                                             "V. polita - V. chamaedrys"))
self_cross_pairs_genome$difference_2c <- self_cross_pairs_genome$self_2c-self_cross_pairs_genome$cross_2c

library(ggplot2)
ggplot(data= self_cross_pairs_genome, aes(x=pair, y=difference_2c, fill=genus))+
  geom_bar(stat="identity")+
  xlab("")+
  ylab("Difference in 2C DNA Content (pg)")+
  labs(fill="Genus")+
  theme(axis.text.x=element_text(angle=90, face="italic"),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background= element_blank(),
        axis.line= element_line(colour="black"),
        legend.text=element_text(face="italic"))

t.test(self_cross_pairs_genome$difference_2c, mu=0)
#p>0.05, so mean difference between pairs doesn't differ sig. from 0