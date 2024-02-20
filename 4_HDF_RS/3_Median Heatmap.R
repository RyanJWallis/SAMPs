HDF_DS <- HDF_RS_Scale %>%
  filter(`colnames` %in% "HDF_DS")
HDF_EP <-  HDF_RS_Scale %>%
  filter(`colnames` %in% "HDF_EP")

library("matrixStats")
HDF_DS_Med <- colMedians(as.matrix(HDF_DS[,-1]))
HDF_EP_Med <- colMedians(as.matrix(HDF_EP[,-1]))

Meds <- rbind(HDF_EP_Med,HDF_DS_Med)

rownames(Meds) <- c("HDF_EP", "HDF_DS")
colnames(Meds) <-colnames[-c(1,2)]

library("gplots")
library("RColorBrewer")

# Upload your file 
all_matrix <- t(Meds)


# Create heat map
breaks <- unique(c(seq(-1,-0.01,length=100),seq(-0.01,0.01,length=100), seq(0.01,1,length=100)))
my_palette <- colorRampPalette(c("Blue","white","white","red"))(length(breaks)-1)
heatmap.2(all_matrix,
          Rowv = T,
          Colv = F,
          col=my_palette,
          breaks=breaks,
          density.info="none",
          trace="none",
          #main = "199 compounds; Length or Prev",
          dendrogram=c("both"), 
          symm=F,symkey=F,symbreaks=T,
          labRow= F,
          labCol= colnames(all_matrix),
          cexCol = 1.5,
          cexRow = 0.8,
          margins = c(7,15),
          key.title = "1" , key.xlab="Standard Score", 
          #rowsep =c(0,4,12,19,31,37,43),
          #colsep =c(0,233),
          sepcolor = c("black"),sepwidth = c(0.05, 0.05),
          #ColSideColors=condition_colors, scale="none",
          distfun = function(x) dist(x, method = "euclidean"),
          hclust=function(x) hclust(x,method="ward.D2"))  

