library ("Rtsne")
#Induction
tsne_Ind <- Rtsne( HDF_RS_Scale[,-c(1,2,71)], perplexity=100, check_duplicates = FALSE)

####
tsne_plot <- data.frame(x = tsne_Ind$Y[,1], y = tsne_Ind$Y[,2], col = HDF_RS_Scale$EP2)
ggplot(tsne_plot) + geom_point(aes(x=x, y=y, color=col), size = 0.1) + guides(colour = guide_legend(override.aes = list(size=4)))
