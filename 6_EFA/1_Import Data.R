library("dplyr")
#Load Files
Ind <- read.csv ("OIS Ind Scale.csv")
CM <- read.csv ("CM_Scaled.csv")
HDF_RS <- read.csv ("HDF_RS_Scale.csv")
HMF_RS <- read.csv ("HMF_RS_Scale.csv")

Ind <- Ind %>% replace(is.na(.), 0)
CM <- CM %>% replace(is.na(.), 0)
HDF_RS <- HDF_RS %>% replace(is.na(.), 0)
HMF_RS <- HMF_RS %>% replace(is.na(.), 0)

All <- rbind(Ind,CM,HDF_RS,HMF_RS)
