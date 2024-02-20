library("gplots")
library("RColorBrewer")
library("matrixStats")
library("plyr")
library("dplyr")
library("data.table")
library("stringr")

#Import Summary Data
Test <- fread("Z Score Import.csv",stringsAsFactors = T)

all<- Test

all <- all[,-1]

#Convert to data matrix 
all_matrix <- (t(as.matrix(all)))
colnames(all_matrix) <- c("Palbo +ve", "Palbo -ve", "Control +ve", "Control -ve")

## Reorder ##

all_matrix  <- all_matrix[,c(4,3,2,1)]

###
all_matrix <- all_matrix[-c(13:18,29:32,37:40),]

# Create heat map
breaks <- unique(c(seq(-10,-0.1,length=100),seq(-0.1,0.1,length=100), seq(0.1,10,length=100)))
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
          cexCol = 1.2,
          cexRow = 0.8,
          margins = c(7,15),
          key.title = "1" , key.xlab="Z-Score", 
          #rowsep =c(0,4,12,19,31,37,43),
          #colsep =c(0,233),
          sepcolor = c("black"),sepwidth = c(0.05, 0.05),
          #ColSideColors=condition_colors, scale="none",
          distfun = function(x) dist(x, method = "euclidean"),
          hclust=function(x) hclust(x,method="ward.D2"))  
