#Ind
OIS_Ind <- Ind %>%
  filter(`colnames` %in% "OIS_Ind")
Vector_Ind <- Ind %>%
  filter(`colnames` %in% "Vec_Ind")

#CM
OIS_CM <- CM %>%
  filter(`colnames` %in% "OIS_CM")
Vector_CM <- CM %>%
  filter(`colnames` %in% "Vec_CM")

#HDF_RS
HDF_DS <- HDF_RS %>%
  filter(`colnames` %in% "HDF_DS")
HDF_EP <- HDF_RS %>%
  filter(`colnames` %in% "HDF_EP")

#HDF_RS
HMF_DS <- HMF_RS %>%
  filter(`colnames` %in% "HMF_DS")
HMF_EP <- HMF_RS %>%
  filter(`colnames` %in% "HMF_EP")

