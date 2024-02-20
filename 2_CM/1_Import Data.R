library("gplots")
library("RColorBrewer")
library("matrixStats")
library("plyr")
library("dplyr")
library("data.table")
library("stringr")

#Remove Single Target Only and Non-Numeric 
drop_cols <- c(1:4,6:10,11:14,29:31,34,51:54,75:77,80,89:92)

#Import Summary Data
CM1_ST <- fread("CM1_ST.csv", drop = drop_cols,stringsAsFactors = F)
CM2_ST <- fread("CM2_ST.csv", drop = drop_cols,stringsAsFactors = F)
CM3_ST <- fread("CM3_ST.csv", drop = drop_cols,stringsAsFactors = F)


Vector_CM_ST1 <- CM1_ST %>% 
  filter(`WELL LABEL` %in% c("C - 4","D - 4","E - 4","F - 4" ))
Vector_CM_ST2 <- CM2_ST %>% 
  filter(`WELL LABEL` %in% c("C - 3","D - 3","E - 3","F - 3"))
Vector_CM_ST3 <- CM3_ST %>% 
  filter(`WELL LABEL` %in% c("C - 4","D - 4","E - 4","F - 4"))


OIS_CM_ST1 <- CM1_ST %>% 
  filter(`WELL LABEL` %in% c("C - 5","D - 5","E - 5","F - 5" ))
OIS_CM_ST2 <- CM2_ST %>% 
  filter(`WELL LABEL` %in% c("C - 5","D - 5","E - 5","F - 5"))
OIS_CM_ST3 <- CM3_ST %>% 
  filter(`WELL LABEL` %in% c("C - 5","D - 5","E - 5","F - 5" ))





