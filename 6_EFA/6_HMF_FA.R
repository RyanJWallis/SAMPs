library(psych)
library("REdaS")
library("GPArotation")
library(dplyr)
library("corrplot")

test <- (HMF_RS[,-c(1,2,31,32,33,34,61:64)])

#Generate FA
FA <- factanal(test, factors=7, lower = 0.5, scores = "regression", rotation = "oblimin")

#Extract Scores
score <-(FA$scores)
HMF_RS_Name <- as.data.frame(HMF_RS[,2])
score_test <- cbind.data.frame(HMF_RS_Name,score)
#write.csv(score_test, "score_HMF_RS.csv")


#Extract Loadings
mmm <- printLoadings(FA$loadings)
#write.csv(as.matrix(mmm), "loadings_HMF_RS.csv")


