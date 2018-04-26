

fsin<- function(x){
  return(-4*sin(x))
  
}
fcos <- function(x){
  return(-3*cos(x))
}

fpol <- function(x){
  A<- sqrt(3**2+4**2)
  h <- atan(-4/3)
  return(A*cos(x+h))
}
fsum <- function(x){
  return(fcos(x)+fsin(x))
}
fdraw <-function(){
plot(fsum, from=0, to=8, col="purple")
plot(fpol, from=0, to=8, col="green", add=TRUE)
plot(fcos, from=0, to=8, col="blue", add=TRUE)
plot(fsin, from=0, to=8, col="magenta", add=TRUE)

}
fdraw()

