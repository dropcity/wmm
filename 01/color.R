#TODO plot.array() aufrufen 

load (file='color.rda')
plot(rlogo)
#pdf(file = 'color.pdf')
#plot(0,0, type='n', xaxt='n', yaxt='n', xlab='', ylab='', bty='n') 

#Vektor mit Intensittswerten
intensity <- seq(0,1,length.out = 25) 

##### a #####
img.a <- array(0,dim = c(25,25,3))
img.a[1:25,1:25,1:3] <- intensity[1:25]
plot.array(img.a, main = "a) Graustufenbild")

###### b #####
img.b <- array(0,dim = c(25,25,3))
for (i in seq(1:25)) img.b[i,25:1,2] <- intensity[1:25]
plot.array(img.b, main = "b) Vertikal aufsteigende Grünwerte" )

##### c #####
img.c  <- array(0,dim = c(25,25,3))
#blau horizontal aufsteigend
img.c[25:1,1:25,3] <- intensity[1:25]
#rot vertikal austeigend
for (i in seq(1:25)) img.c[i,1:25,1] <- intensity[1:25]
plot.array(img.c, main = "c) Rot und Blau aufsteigende Farbwerte")

##### d #####

img.d <- img.c
img.d[1:25,1:25,2] <- 1-(img.d[1:25,1:25,1] + img.d[1:25,1:25,3])
img.d[img.d[1:25,1:25,2]>1] <- 1 
img.d[img.d[1:25,1:25,2]<0] <- 0
plot.array(img.d, main = "d) Addierte Grünwerte ")

##### e #####

img.e <-img.d
for (i in seq(1:25)){
  for (j in seq(1:25)){
max <-img.e[i,j,1]
if(img.e[i,j,2] > img.e[i,j,1]) max<-img.e[i,j,2]
if(img.e[i,j,3] > max) max<-img.e[i,j,3]
factor<-1
if (max!=0) factor<- (1/max)
img.e[i,j,1:3]<-(img.e[i,j,1:3]*factor)
}}
plot.array(img.e, main = "e) Multiplikativ angehobene Farbwerte")

##### f #####

img.f <-img.d
for (i in seq(1:25)){
  for (j in seq(1:25)){
    max <-img.f[i,j,1]
    if(img.f[i,j,2] > img.f[i,j,1]) max<-img.f[i,j,2]
    if(img.f[i,j,3] > max) max<-img.f[i,j,3]
    differenz <-0
    if(max!=0) differenz<- 1-max
    img.f[i,j,1:3]<-(img.f[i,j,1:3]+differenz)
  }}
plot.array(img.e, main = "f) Addititv angehobene Farbwerte")
#dev.off()
