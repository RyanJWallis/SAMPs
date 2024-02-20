library("dplyr")

#Load Files
Ind <- read.csv ("Ind_ST_Scale.csv")
CM <- read.csv ("CM_ST_Scale.csv")
HDF_RS <- read.csv ("HDF_RS_ST_Scale.csv")
HMF_RS <- read.csv ("HMF_RS_ST_Scale.csv")


HMF_RS <- HMF_RS %>% replace(is.na(.), 0)

