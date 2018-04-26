#TODO plot.array() aufrufen 

load (file='color.rda')
plot(rlogo)
#plot(0,0, type='n', xaxt='n', yaxt='n', xlab='', ylab='', bty='n') 

#Vektor mit Intensit�tswerten
intensity <- seq(0,1,length.out = 25) 

#####a#####
img.a <- array(0,dim = c(25,25,3))
img.a[1:25,1:25,1:3] <- intensity[1:25]
plot.array(img.a)
######b#####
img.b <- array(0,dim = c(25,25,3))
for (i in seq(1:25)) img.b[i,25:1,2] <- intensity[1:25]
plot.array(img.b)
#####c#####
img.c  <- array(0,dim = c(25,25,3))
img.c[25:1,1:25,1] <- intensity[1:25]
for (i in seq(1:25)) img.c[i,25:1,3] <- intensity[1:25]
plot.array(img.c)
#####d#####
# gespiegelt ????
img.d <- img.c
img.d[1:25,1:25,2] <- 1-(img.d[1:25,1:25,1] + img.d[1:25,1:25,3])
img.d[img.d[1:25,1:25,2]>1] <- 1
img.d[img.d[1:25,1:25,2]<0] <- 0
plot.array(img.d)
#####e#####
# (e) Heben Sie die Farbwerte in (d) multiplikativ an, so dass der höchste Farbwert 1 ist.

#####f#####
# (f) Heben Sie die Farbwerte in (d) additiv an, so dass der höchste Farbwert 1 ist.