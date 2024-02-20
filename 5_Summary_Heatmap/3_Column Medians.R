library("matrixStats")

#Ind
OIS_Ind_Med <- colMedians(as.matrix(OIS_Ind[,-c(1,2,71)]))
Vector_Ind_Med <-  colMedians(as.matrix(Vector_Ind[,-c(1,2,71)]))

#CM
OIS_CM_Med <- colMedians(as.matrix(OIS_CM[,-c(1,2,71)]))
Vector_CM_Med <- colMedians(as.matrix(Vector_CM[,-c(1,2,71)]))


#HDF_RS
HDF_DS_Med <- colMedians(as.matrix(HDF_DS[,-c(1,2,71)]))
HDF_EP_Med <- colMedians(as.matrix(HDF_EP[,-c(1,2,71)]))

#HMF_RS
HMF_DS_Med <- colMedians(as.matrix(HMF_DS[,-c(1,2,71)]))
HMF_EP_Med <- colMedians(as.matrix(HMF_EP[,-c(1,2,71)]))

