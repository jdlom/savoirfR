# ---
# title: "Exercice 3 -  module 5"
# --- 
# En réutilisant le graphe obtenu à l’exercice 1 (rpls_aggrege_large.RData), y rajouter :
#  - une palette brewer pour la couleur ;
#  - la légende en bas ;
#  - des libellés (axes et légende) parlant et un titre.
load("extdata/rpls_aggrege_large.RData")


library(dplyr)
library(ggplot2)

ggplot(data = rpls_aggrege_large %>%
         filter(TypeZone == "Epci")) +
  geom_point(aes(x = Parc_de_moins_de_5_ans_pourcent,
                 y = DPE_GES_classe_ABC_pourcent,
                 color = epci_2017_52),
             size = .7
  ) +
  scale_color_brewer(type = "qual", palette = "Paired",
                     labels = c("Autres Epci/Epci de la région Pays de la Loire")) +
  scale_x_continuous(limits = c(0, 40)) +
  scale_y_continuous(limits = c(0, 80)) +
  theme(legend.position = "bottom") +
  labs(title = "Répartition des Epci en fonction \nde la part des logements ayant une étiquette A,B,C et de la part du parc récent",
       x = "Part du parc de moins de 5 ans",
       y = "Part des logements ayant une étiquette A,B,C",
       color = "")


