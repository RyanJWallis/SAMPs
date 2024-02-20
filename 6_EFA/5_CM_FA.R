library(psych)
library("REdaS")
library("GPArotation")
library(dplyr)
library("corrplot")

test <- (CM[,-c(1,2)])

#Generate FA
FA <- factanal(test, factors=7, lower = 0.5, scores = "regression", rotation = "oblimin")

#Extract Scores
score <-(FA$scores)
CM_Name <- as.data.frame(CM[,2])
score_test <- cbind.data.frame(CM_Name,score)
#write.csv(score_test, "score_CM.csv")


#Extract Loadings
mmm <- printLoadings(FA$loadings)
#write.csv(as.matrix(mmm), "loadings_CM.csv")


