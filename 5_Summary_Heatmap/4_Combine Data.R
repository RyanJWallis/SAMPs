Controls <- data.frame(Vector_Ind_Med,Vector_CM_Med,HDF_EP_Med,HMF_EP_Med)

Senescence <- data.frame(OIS_Ind_Med,OIS_CM_Med,HDF_DS_Med,HMF_DS_Med)


Controls <- t(Controls)
Senescence <- t(Senescence)

colnames <- colnames(OIS_Ind[,-c(1,2,71)])

Control_rownames <- c("Vec_Ind", "Vec_CM","HDF_EP","HMF_EP")

Sen_rownames <- c("OIS_Ind", "OIS_CM","HDF_DS","HMF_DS")

colnames(Controls) <- colnames
colnames(Senescence) <- colnames

rownames(Controls) <- Control_rownames 
rownames(Senescence) <- Sen_rownames 

All_Meds <- rbind(Controls,Senescence)
