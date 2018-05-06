
quant<-function(v, zell, lower, upper, mitten){
  v<-ifelse(((lower[1:zell]<=v)&(v<upper[1:zell])), mitten[1:zell] , NA) 
}

quantize<- function(x, bits=8, min, max){
  zellen<-2**bits
  step<-1/zellen
  mitten<-seq(step/2, max-step/2, by=step)
  lower<-seq(min, max-step, length.out= zellen)
  lower[1]<- -Inf
  upper<-seq(min+step, max(), length.out= zellen)
  upper[zellen]<- Inf
  t<-sapply(x, quant,zell= zellen, lower=lower, upper=upper, mitten= mitten)
  y<-t[!is.na(t[,1:length(x)])]
  return(y)
  
}
decibel<- function(x){
  return(10*log10(var(x)))
}

SNR<-function(x,y){
  return(decibel(x)-decibel(y))
}


x<-c(0.1,  0.4 ,0.35 , 0.8, 0.4, 5)
y<-quantize(x, 4, 0, 1)
print(y)






