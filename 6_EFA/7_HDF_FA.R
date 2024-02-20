library(psych)
library("REdaS")
library("GPArotation")
library(dplyr)
library("corrplot")

test <- (HDF_RS[,-c(1,2)])

#Generate FA
FA <- factanal(test, factors=9, lower = 0.5, scores = "regression", rotation = "oblimin")

#Extract Scores
score <-(FA$scores)
HDF_RS_Name <- as.data.frame(HDF_RS[,2])
score_test <- cbind.data.frame(HDF_RS_Name,score)
#write.csv(score_test, "score_HDF_RS.csv")


#Extract Loadings
mmm <- printLoadings(FA$loadings)
#write.csv(as.matrix(mmm), "loadings_HDF_RS.csv")


