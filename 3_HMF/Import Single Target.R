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
DS1_ST <- fread("HMF_DS1_ST.csv", drop = drop_cols,stringsAsFactors = T)
DS2_ST <- fread("HMF_DS2_ST.csv", drop = drop_cols,stringsAsFactors = T)
DS3_ST <- fread("HMF_DS3_ST.csv", drop = drop_cols,stringsAsFactors = T)


EP1_ST <- fread("HMF_EP1_ST.csv", drop = drop_cols,stringsAsFactors = T)
EP2_ST <- fread("HMF_EP2_ST.csv", drop = drop_cols,stringsAsFactors = T)
EP3_ST <- fread("HMF_EP3_ST.csv", drop = drop_cols,stringsAsFactors = T)




