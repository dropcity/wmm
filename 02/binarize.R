load('binarize.rda')
#plot.array(algae)
#plot.array(tonga)

#### a ####
par(mfrow = c(2,2))

plot.array(algae)
hist(algae, breaks = 25, freq = F, col = 'green', xlab = 'Algae')

#### b ####
alga <- algae[210:260, 60:110]
plot.array(alga)
hist(alga, breaks = 25, freq = F, col = 'green', xlab = 'Alga')

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
binarize <- function(x, method='fixed', threshold=0.5, plot = FALSE){
  switch (method,
    'median' = bin <-(x>median(x)),
    'mean'   = bin <-(x>mean(x)),
    'inter'  = {km <- kmeans(x,2)
                thres.km <- (mean(km$centers[1,])+mean(km$centers[2,]))/2
                #print(thres.km)
                bin <-(x>thres.km)},
    'fixed'  = bin <-(x>threshold)
  )
  
  if (plot) plot.array(bin, main = method)  
  
  return(bin)
}

##### e #####
#Vektor mit allen Methoden
method.vec <- c('median','mean', 'inter', 'fixed')

#algae
par(mfrow = c(2,2))
plots <- sapply(method.vec, function(method.vec){
  b <- binarize(algae, method = method.vec, plot = TRUE)
  #plot.array(b, main = method.vec)
})

#alga
par(mfrow = c(2,2))
plots <- sapply(method.vec, function(method.vec){
  b <- binarize(alga, method = method.vec, plot = TRUE)
  #plot.array(b, main = method.vec)
})

#tonga
par(mfrow = c(2,2))
plots <- sapply(method.vec, function(method.vec){
  b <- binarize(tonga, method = method.vec, plot = TRUE)
  #plot.array(b, main = method.vec)
})

########



