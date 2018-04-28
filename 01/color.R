#TODO plot.array() aufrufen 

load (file='color.rda')
plot(rlogo)
#plot(0,0, type='n', xaxt='n', yaxt='n', xlab='', ylab='', bty='n') 

#Vektor mit Intensittswerten
intensity <- seq(0,1,length.out = 25) 

##### a #####
img.a <- array(0,dim = c(25,25,3))
img.a[1:25,1:25,1:3] <- intensity[1:25]
plot.array(img.a)

###### b #####
img.b <- array(0,dim = c(25,25,3))
for (i in seq(1:25)) img.b[i,25:1,2] <- intensity[1:25]
plot.array(img.b)

##### c #####
img.c  <- array(0,dim = c(25,25,3))
#blau horizontal aufsteigend
img.c[25:1,1:25,3] <- intensity[1:25]
#rot vertikal austeigend
for (i in seq(1:25)) img.c[i,1:25,1] <- intensity[1:25]
plot.array(img.c)

##### d #####
# gespiegelt ????
img.d <- img.c
img.d[1:25,1:25,2] <- 1-(img.d[1:25,1:25,1] + img.d[1:25,1:25,3])
img.d[img.d[1:25,1:25,2]>1] <- 1 
img.d[img.d[1:25,1:25,2]<0] <- 0
plot.array(img.d)
#####e#####
# (e) Heben Sie die Farbwerte in (d) multiplikativ an, so dass der höchste Farbwert 1 ist.
img.e <-img.d
for (i in seq(1:25)){
  for (j in seq(1:25)){
    r<-img.e[i,j,1] 
    b<-img.e[i,j,2] 
    g<-img.e[i,j,3] 
    print(paste("before rbg: ", r, b, g))
    img.e[i,j,1]<- round(img.e[i,j,1], 4)
    img.e[i,j,2]<- round(img.e[i,j,2], 4)
    img.e[i,j,3]<- round(img.e[i,j,3], 4)
    r<-img.e[i,j,1] 
    b<-img.e[i,j,2] 
    g<-img.e[i,j,3] 
    print(paste("rounded rbg: ", r, b, g))
max <-img.e[i,j,1]

#print(paste("max: " , max))
if(img.e[i,j,2] > img.e[i,j,1]) { max<-img.e[i,j,2]
print(paste("max: ", max))}

if(img.e[i,j,3] > img.e[i,j,2]) max<-img.e[i,j,3]
factor<-1
if (max!=0) factor<- (1/max)
img.e[i,j,1:3]<-(img.e[i,j,1:3]*factor)
#img.e[img.e[1:25,1:25,1:3]>1] <- 1 
r<-img.e[i,j,1] 
b<-img.e[i,j,2] 
g<-img.e[i,j,3] 
print(paste(i, j, " maximum: ", max ,factor," rbg: ",r, b ,g))
print(r)
}}

plot.array(img.e)



#####f#####
# (f) Heben Sie die Farbwerte in (d) additiv an, so dass der höchste Farbwert 1 ist.

