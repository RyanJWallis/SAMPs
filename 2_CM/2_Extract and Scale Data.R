Vec_CM <- c("Vec_CM")
OIS_CM <- c("OIS_CM")


Vector_CM_ST1 <- cbind(Vec_CM, Vector_CM_ST1)
Vector_CM_ST2 <- cbind(Vec_CM, Vector_CM_ST2)
Vector_CM_ST3 <- cbind(Vec_CM, Vector_CM_ST3)


OIS_CM_ST1 <- cbind(OIS_CM, OIS_CM_ST1)
OIS_CM_ST2 <- cbind(OIS_CM, OIS_CM_ST2)
OIS_CM_ST3 <- cbind(OIS_CM, OIS_CM_ST3)

colnames <- c("colnames",colnames(Vector_CM_ST1))
colnames <- colnames[-c(2)]

colnames(Vector_CM_ST1) <- colnames
colnames(Vector_CM_ST2) <- colnames
colnames(Vector_CM_ST3) <- colnames
colnames(OIS_CM_ST1) <- colnames
colnames(OIS_CM_ST2) <- colnames
colnames(OIS_CM_ST3) <- colnames

CM_1 <- rbind(Vector_CM_ST1,OIS_CM_ST1)
CM_2 <- rbind(Vector_CM_ST2,OIS_CM_ST2)
CM_3 <- rbind(Vector_CM_ST3,OIS_CM_ST3)

CM_1_Scale <- CM_1 %>%
  mutate_if (is.numeric, scale)

CM_2_Scale<- CM_2 %>%
  mutate_if (is.numeric, scale)

CM_3_Scale <- CM_3 %>%
  mutate_if (is.numeric, scale)

CM_Scale <- rbind(CM_1_Scale,CM_2_Scale,CM_3_Scale)

CM_Scale <- CM_Scale[,-2]






    