HDF_EP <- c("HDF_EP")
HDF_DS <- c("HDF_DS")


EP1_ST <- cbind(HDF_EP, EP1_ST )
EP2_ST  <- cbind(HDF_EP, EP2_ST)
EP3_ST  <- cbind(HDF_EP, EP3_ST )


DS1_ST <- cbind(HDF_DS, DS1_ST )
DS2_ST  <- cbind(HDF_DS, DS2_ST)
DS3_ST  <- cbind(HDF_DS, DS3_ST )

colnames <- c("colnames",colnames(EP1_ST))
colnames <- colnames[-c(2)]

colnames(EP1_ST) <- colnames
colnames(EP2_ST) <- colnames
colnames(EP3_ST) <- colnames
colnames(DS1_ST) <- colnames
colnames(DS2_ST) <- colnames
colnames(DS3_ST) <- colnames

HDF_RS_1 <- rbind(EP1_ST, DS1_ST)
HDF_RS_2 <- rbind(EP2_ST, DS2_ST)
HDF_RS_3 <- rbind(EP3_ST, DS3_ST)

HDF_RS_1_Scale <- HDF_RS_1 %>%
  mutate_if (is.numeric, scale)

HDF_RS_2_Scale <- HDF_RS_2 %>%
  mutate_if (is.numeric, scale)

HDF_RS_3_Scale <- HDF_RS_3 %>%
  mutate_if (is.numeric, scale)

HDF_RS_Scale <- rbind(HDF_RS_1_Scale,HDF_RS_2_Scale ,HDF_RS_3_Scale)

HDF_RS_Scale<- HDF_RS_Scale[,-2]






