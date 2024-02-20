library("gplots")
library("RColorBrewer")
library("matrixStats")
library("plyr")
library("dplyr")
library("data.table")
library("stringr")

#Remove Single Target Only and Non-Numeric 
drop_cols <- c(1:4,6:10,11:14,29:31,34,51:54,75:77,80,89:92)

#Import ST Data
Ind1_ST <- fread("OIS_Ind_1_ST.csv", drop = drop_cols,stringsAsFactors = F)
Ind2_ST <- fread("OIS_Ind_2_ST.csv", drop = drop_cols,stringsAsFactors = F)
Ind3_ST <- fread("OIS_Ind_3_ST.csv", drop = drop_cols,stringsAsFactors = F)


Vector_Ind_ST1 <- Ind1_ST %>% 
  filter(`WELL LABEL` %in% c("B - 2","B - 3","B - 4"))
Vector_Ind_ST2 <- Ind2_ST %>% 
  filter(`WELL LABEL` %in% c("B - 2","B - 3","B - 4"))
Vector_Ind_ST3 <- Ind3_ST %>% 
  filter(`WELL LABEL` %in% c("B - 2","B - 3","B - 4"))


OIS_Ind_ST1 <- Ind1_ST %>% 
  filter(`WELL LABEL` %in% c("B - 7","B - 8","B - 9"))
OIS_Ind_ST2 <- Ind2_ST %>% 
  filter(`WELL LABEL` %in% c("B - 7","B - 8","B - 9"))
OIS_Ind_ST3 <- Ind3_ST %>% 
  filter(`WELL LABEL` %in% c("B - 7","B - 8","B - 9"))





