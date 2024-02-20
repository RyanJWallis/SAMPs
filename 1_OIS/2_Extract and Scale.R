Vec_Ind <- c("Vec_Ind")
OIS_Ind <- c("OIS_Ind")

Vector_Ind_ST1 <- cbind(Vec_Ind, Vector_Ind_ST1)
Vector_Ind_ST2 <- cbind(Vec_Ind, Vector_Ind_ST2)
Vector_Ind_ST3 <- cbind(Vec_Ind, Vector_Ind_ST3)


OIS_Ind_ST1 <- cbind(OIS_Ind, OIS_Ind_ST1)
OIS_Ind_ST2 <- cbind(OIS_Ind, OIS_Ind_ST2)
OIS_Ind_ST3 <- cbind(OIS_Ind, OIS_Ind_ST3)

colnames <- c("colnames",colnames(Vector_Ind_ST1))
colnames <- colnames[-c(2)]

colnames(Vector_Ind_ST1) <- colnames
colnames(Vector_Ind_ST2) <- colnames
colnames(Vector_Ind_ST3) <- colnames
colnames(OIS_Ind_ST1) <- colnames
colnames(OIS_Ind_ST2) <- colnames
colnames(OIS_Ind_ST3) <- colnames

Ind_1 <- rbind(Vector_Ind_ST1,OIS_Ind_ST1)
Ind_2 <- rbind(Vector_Ind_ST2,OIS_Ind_ST2)
Ind_3 <- rbind(Vector_Ind_ST3,OIS_Ind_ST3)

Ind_1_Scale <- Ind_1 %>%
  mutate_if (is.numeric, scale)

Ind_2_Scale<- Ind_2 %>%
  mutate_if (is.numeric, scale)

Ind_3_Scale <- Ind_3 %>%
  mutate_if (is.numeric, scale)

Ind_Scale <- rbind(Ind_1_Scale,Ind_2_Scale,Ind_3_Scale)

Ind_Scale <- Ind_Scale[,-2]






