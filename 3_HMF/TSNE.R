library("Rtsne")
HMF_RS_Scale <- HMF_RS_Scale %>% replace(is.na(.), 0)
tsne_HMF_RS<- Rtsne(HMF_RS_Scale[,-1], perplexity=100, check_duplicates = FALSE)


library(ggplot2)
tsne_plot <- data.frame(x = tsne_HMF_RS$Y[,1], y = tsne_HMF_RS$Y[,2], col = HMF_RS_Scale$colnames)

ggplot(tsne_plot) + geom_point(aes(x=x, y=y, color=col), size = 0.1) + guides(colour = guide_legend(override.aes = list(size=5))) +
  theme (axis.text = element_text (size= 15), axis.title = element_text (size =15)) + theme(legend.text=element_text(size=15)) +
  labs( x = "TSNE 1", y = "TSNE 2", color = "")
