library(psych)
library("REdaS")
library("GPArotation")
library(dplyr)
library("corrplot")

test <- (Ind[,-c(1,2)])

#Generate FA
FA <- factanal(test, factors=8, lower = 0.5, scores = "regression", rotation = "oblimin")

#Extract Scores
score <-(FA$scores)
Ind_Name <- as.data.frame(Ind[,2])
score_test <- cbind.data.frame(Ind_Name,score)
write.csv(score_test, "score_Ind.csv")


#Extract Loadings
mmm <- printLoadings(FA$loadings)
#write.csv(as.matrix(mmm), "loadings_Ind.csv")


#Extract Loadings for polar
mmm <- printLoadings(FA$loadings)
#write.csv(FA$loadings, "Loadings Ind for Polar.csv")



