
x<-c(0.1,  0.4 ,0.35 , 0.8, 0.4, 0.3)
x
quant<-function(v){
  v<-ifelse(((lower[1:4]<=v)&(v<upper[1:4])), z[1:4] , NA) 
}
t<-sapply(x, quant)
x<-t[!is.na(t[,1:6])]
x

