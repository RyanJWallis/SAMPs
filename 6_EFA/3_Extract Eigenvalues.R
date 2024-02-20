library(psych)

### Ind 
test <- (Ind[,-c(1,2)])
FA <- fa(test, factors=8, lower = 0.5, fm = "ml",  scores = "regression", rotation = "oblimin")
EV_Ind <- FA$values

## CM
test <- (CM[,-c(1,2)])
FA <- fa(test, factors=7, lower = 0.5, fm = "ml",  scores = "regression", rotation = "oblimin")
EV_CM <- FA$values

## HDFRS
test <- (HDF_RS[,-c(1,2)])
FA <- fa(test, factors=9, lower = 0.5, fm = "ml",  scores = "regression", rotation = "oblimin")
EV_HDF_RS <- FA$values

#HMF_RS
test <- test <- (HMF_RS[,-c(1,2,31,32,33,34,61:64)])
FA <- fa(test, factors=7, lower = 0.5, fm = "ml",  scores = "regression", rotation = "oblimin")
EV_HMF_RS <- FA$values

test <- (All[,-c(1,2)])
FA <- fa(test, factors=8, lower = 0.5, fm = "ml",  scores = "regression", rotation = "oblimin")
EV_All <- FA$values

#write.csv(EV_Ind, "EV_Ind.csv")
#write.csv(EV_CM, "EV_CM.csv")
#write.csv(EV_HDF_RS, "EV_HDF_RS.csv")
#write.csv(EV_HMF_RS, "EV_HMF_RS.csv")
#write.csv(EV_All, "EV_All.csv")
