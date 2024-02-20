library("gplots")
library("RColorBrewer")

# Upload your file 
all_matrix <- t(All_Meds[-c(4,9),-c(15,16,19,56,57,60)])


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
          cexCol = 0.7,
          cexRow = 0.8,
          margins = c(5,5),
          key.title = "1" , key.xlab="Z Score", 
          #rowsep =c(0,4,12,19,31,37,43),
          #colsep =c(0,233),
          sepcolor = c("black"),sepwidth = c(0.05, 0.05),
          #ColSideColors=condition_colors, scale="none",
          distfun = function(x) dist(x, method = "euclidean"),
          hclust=function(x) hclust(x,method="ward.D2"))

# Clustering for dendrogram
row_clust <- hclust(dist(all_matrix, method = 'euclidean'), method = 'ward.D2')

# k is number of clusters out 
clust <- sort(cutree(row_clust, k=7))
clust2 <- data.matrix(clust)

#Save cluster locations in an accessible csv file 
#write.csv(clust2,"Cluster_7.csv", row.names = TRUE)



