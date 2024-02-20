library("matrixStats")
Palbo_Med <- colMeans(as.matrix(Palbo[,-42]))
Control_Med<- colMeans(as.matrix(Control[,-42]))



Meds <- rbind(Palbo_Med,Control_Med)

rownames(Meds) <- c("Palbo", "Control")
colnames <- colnames(Palbo)
colnames(Meds) <-colnames[-42]

library("gplots")
library("RColorBrewer")

# Upload your file 
all_matrix <- t(Meds)

#### Remove p21 Cols ####
all_matrix <- all_matrix[-c(13:18,29:32,37:40),]




# Create heat map
breaks <- unique(c(seq(-1,-0.01,length=100),seq(-0.01,0.01,length=100), seq(0.01,1,length=100)))
my_palette <- colorRampPalette(c("Blue","white","white","red"))(length(breaks)-1)
heatmap.2(all_matrix,
          Rowv = T,
          Colv = T,
          col=my_palette,
          breaks=breaks,
          density.info="none",
          trace="none",
          #main = "199 compounds; Length or Prev",
          dendrogram=c("both"), 
          symm=F,symkey=F,symbreaks=T,
          labRow= F,
          labCol= colnames(all_matrix),
          cexCol = 1.2,
          cexRow = 0.8,
          margins = c(7,15),
          key.title = "1" , key.xlab="Standard Score", 
          #rowsep =c(0,4,12,19,31,37,43),
          #colsep =c(0,233),
          sepcolor = c("black"),sepwidth = c(0.05, 0.05),
          #ColSideColors=condition_colors, scale="none",
          distfun = function(x) dist(x, method = "euclidean"),
          hclust=function(x) hclust(x,method="ward.D2"))  
