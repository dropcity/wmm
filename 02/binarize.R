load('binarize.rda')
#plot.array(algae)
#plot.array(tonga)

#### a ####
layout (matrix (c(1,2,3,4), ncol=2))
# Lesen Sie die Kommandohilfe zur hist-Funktion und erzeugen Sie zum Bild algae
# das Grauwerthistogramm in 25 Stufen; Bild und Histogramm zeichnen Sie bitte in
# eine (2 × 2)-Grafik.
plot.array(algae)
hist(algae, breaks = 25, freq = T, col = 'green', xlab = 'Algae')

#### b ####
alga <- algae[210:260, 60:110]
plot.array(alga)
hist(alga, breaks = 25, freq = T, col = 'green', xlab = 'Alga')

#Ende der ersten Grafik (a + b)
layout (1) 

#### c ####
#par(mfrow=c(3,3))
binarize <- function(x, method='fixed', threshold=0.5, plot = FALSE){
  bin <-(x>threshold)
  if (plot) plot.array(bin)  
}
binarize(alga, threshold = threshold.vec[9], plot = TRUE)
#plot.array(binarize(alga))
threshold.vec <-  seq(0.2,0.5,length.out = 9)

#layout(matrix(c(1,2,3,4,5,6), ncol = 3))
#plot.array(binarize(x = alga, threshold = 0.5))
#
#mapply(plot.array,binarize(x=alga, threshold = seq(0.2,0.5, length.out = 9)) )
#binarize.vec <- Vectorize(binarize,"x","threshold")
#plot.array(binarize.vec(x=alga, threshold = threshold.vec))
bins <- binarize(alga, threshold.vec[1:9])
bin1 <- binarize(alga, threshold.vec[1])
plot.array(bins)
#mapply(function(x) plot.array(binarize.vec(alga, threshold.vec)),binarize.vec(alga, threshold.vec))
#layout(1)
#
#par(mfrow = c(3,3))
#lapply(binarize(x=alga, threshold = threshold.vec), function(x) {plot.array(binarize(x=alga, threshold = threshold.vec))})

  
####TODO plotting??????



#### d ####
binarize <- function(x, method='fixed', threshold=0.5, plot = FALSE){
  switch (method,
    'median' = bin <-(x>median(x)),
    'mean' = bin <-(x>mean(x)),
    'inter' = bin <-(x>kmeans(x)),
    'fixed' = bin <-(x>threshold)
  )
  
  if (plot) plot.array(bin)  
}

##### e #####
binarize(alga, method = 'median', plot = TRUE)
binarize(alga, method = 'mean', plot = TRUE)
binarize(alga, method = 'inter', plot = TRUE) #### TODO kmeans ???
binarize(alga, method = 'fixed', plot = TRUE)

