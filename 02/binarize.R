load('binarize.rda')
#plot.array(algae)
#plot.array(tonga)

#### a ####
layout (matrix (c(1,2,3,4), ncol=2))
# Lesen Sie die Kommandohilfe zur hist-Funktion und erzeugen Sie zum Bild algae
# das Grauwerthistogramm in 25 Stufen; Bild und Histogramm zeichnen Sie bitte in
# eine (2 × 2)-Grafik.
plot.array(algae)
hist(algae, breaks = 25, freq = F, col = 'green', xlab = 'Algae')

#### b ####
alga <- algae[210:260, 60:110]
plot.array(alga)
hist(alga, breaks = 25, freq = F, col = 'green', xlab = 'Alga')

#Ende der ersten Grafik (a + b)
layout (1) 

#### c ####
binarize <- function(x, method='fixed', threshold=0.5, plot = FALSE){
  b <- (x>threshold)
  #print(b)
  if (plot) plot.array(b)  
  return(b)

}
#Vektor mit allen thresholds
threshold.vec <-  seq(0.2,0.5,length.out = 9)

### plots
par(mfrow = c(3,3))
plots <- sapply(threshold.vec, function(threshold.vec){
  b <- binarize(alga, threshold = threshold.vec)
  plot.array(b, main = threshold.vec)
})


#### d ####
binarize.d <- function(x, method='fixed', threshold=0.5, plot = FALSE){
  switch (method,
    'median' = bin <-(x>median(x)),
    'mean' = bin <-(x>mean(x)),
    'inter' = bin <-(x>kmeans(x)),
    'fixed' = bin <-(x>threshold)
  )
  
  if (plot) plot.array(bin)  
  
  return(bin)
}

##### e #####
#algae
method.vec <- c('median','mean','fixed')
par(mfrow = c(2,2))
plots <- sapply(method.vec, function(method.vec){
  b <- binarize.d(algae, method = method.vec)
  plot.array(b, main = method.vec)
})

#alga
par(mfrow = c(2,2))
plots <- sapply(method.vec, function(method.vec){
  b <- binarize.d(alga, method = method.vec)
  plot.array(b, main = method.vec)
})

#tonga
par(mfrow = c(2,2))
plots <- sapply(method.vec, function(method.vec){
  b <- binarize.d(tonga, method = method.vec)
  plot.array(b, main = method.vec)
})

########
binarize(alga, method = 'median', plot = TRUE)
binarize(alga, method = 'mean', plot = TRUE)
binarize(alga, method = 'inter', plot = TRUE) #### TODO kmeans ???
binarize(alga, method = 'fixed', plot = TRUE)

