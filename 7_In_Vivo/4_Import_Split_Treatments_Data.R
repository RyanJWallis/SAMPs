library("gplots")
library("RColorBrewer")
library("matrixStats")
library("plyr")
library("dplyr")
library("data.table")
library("stringr")

#Import Summary Data
Palbo_1 <- fread("7214 Palbo.csv",stringsAsFactors = T)
Palbo_2 <- fread("7133 Palbo.csv",stringsAsFactors = T)
Palbo_3 <- fread("7139 Palbo.csv",stringsAsFactors = T)

Control_1 <- fread("7125 Control.csv",stringsAsFactors = T)
Control_2 <- fread("7135 Control.csv",stringsAsFactors = T)
Control_3 <- fread("7136 Control.csv",stringsAsFactors = T)


Palbo_1 <- Palbo_1 %>%
  mutate(Detail = case_when(Class == "Positive" ~ "Palbo Pos", Class == "Negative" ~ "Palbo Neg" ))
Palbo_2 <- Palbo_2 %>%
  mutate(Detail = case_when(Class == "Positive" ~ "Palbo Pos", Class == "Negative" ~ "Palbo Neg" ))
Palbo_3 <- Palbo_3 %>%
  mutate(Detail = case_when(Class == "Positive" ~ "Palbo Pos", Class == "Negative" ~ "Palbo Neg" ))

Control_1 <- Control_1 %>%
  mutate(Detail = case_when(Class == "Positive" ~ "Control Pos", Class == "Negative" ~ "Control Neg" ))
Control_2 <- Control_2 %>%
  mutate(Detail = case_when(Class == "Positive" ~ "Control Pos", Class == "Negative" ~ "Control Neg" ))
Control_3 <- Control_3 %>%
  mutate(Detail = case_when(Class == "Positive" ~ "Control Pos", Class == "Negative" ~ "Control Neg" ))



All_Data <- rbind(Palbo_1,Palbo_2,Palbo_3,Control_1,Control_2,Control_3)

All_Data <- All_Data[,-c(1:7)]

All_Scale <- All_Data  %>%
  mutate_if (is.numeric, scale)

Palbo_Pos <- All_Scale %>%
  filter(Detail == "Palbo Pos")

Palbo_Neg <- All_Scale %>%
  filter(Detail == "Palbo Neg")

Control_Pos <- All_Scale %>%
  filter(Detail == "Control Pos")

Control_Neg <- All_Scale %>%
  filter(Detail == "Control Neg")



