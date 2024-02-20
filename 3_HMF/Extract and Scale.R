HMF_EP <- c("HMF_EP")
HMF_DS <- c("HMF_DS")


EP1_ST <- cbind(HMF_EP, EP1_ST )
EP2_ST  <- cbind(HMF_EP, EP2_ST)
EP3_ST  <- cbind(HMF_EP, EP3_ST)


DS1_ST <- cbind(HMF_DS, DS1_ST )
DS2_ST  <- cbind(HMF_DS, DS2_ST)
DS3_ST  <- cbind(HMF_DS, DS3_ST )


colnames <- c("colnames",colnames(EP1_ST))
colnames <- colnames[-c(2)]

colnames(EP1_ST) <- colnames
colnames(EP2_ST) <- colnames
colnames(EP3_ST) <- colnames

colnames(DS1_ST) <- colnames
colnames(DS2_ST) <- colnames
colnames(DS3_ST) <- colnames


HMF_RS_1 <- rbind(EP1_ST, DS1_ST)
HMF_RS_2 <- rbind(EP2_ST, DS2_ST)
HMF_RS_3 <- rbind(EP3_ST, DS3_ST)


HMF_RS_1_Scale <- HMF_RS_1 %>%
  mutate_if (is.numeric, scale)

HMF_RS_2_Scale <- HMF_RS_2 %>%
  mutate_if (is.numeric, scale)

HMF_RS_3_Scale <- HMF_RS_3 %>%
  mutate_if (is.numeric, scale)


HMF_RS_Scale <- rbind(HMF_RS_1_Scale,HMF_RS_2_Scale ,HMF_RS_3_Scale)

HMF_RS_Scale<- HMF_RS_Scale[,-c(2,31:34,61:64)]






