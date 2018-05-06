
quant<-function(v, zell, lower, upper, mitten){
  v<-ifelse(((lower[1:zell]<=v)&(v<upper[1:zell])), mitten[1:zell] , NA) 
}

quantize<- function(x, bits=8, min, max){
  zellen<-2**bits
  step<-max/zellen
  mitten<-seq(step/2, max-step/2, by=step)
  lower<-seq(min, max-step, length.out= zellen)
  lower[1]<- -Inf
  upper<-seq(min+step, max, length.out= zellen)
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

GenSNR<- function(x, bits, min, max){
  y<-quantize(x, bits, min, max)
  rausch<- x-y
  return(SNR(x,rausch))
}


####### b #########

###### d #########
d<-sin(seq(0,pi,length=1500))
dSNR8<- GenSNR(d, 8,0,1)
dSNR12<-GenSNR(d, 12,0,1)
dSNR8
dSNR12
###### e ########
e<-runif(1500, 0,1)
eSNR8<-GenSNR(e, 8, 0,1)
eSNR12<-GenSNR(e,12,0,1)
eSNR8
eSNR12

##### f ########
f<-rnorm(1500,1/2,1/8)
fSNR8<-GenSNR(f,8,0,1)
fSNR12<-GenSNR(f,12,0,1)
fSNR8
fSNR12

##### g #######
g<-seq(0,1, length.out = 1500)
gSNR8<-GenSNR(g,8,0,1)
gSNR12<-GenSNR(g,12,0,1)
gSNR8
gSNR12

##### h #######
h<-runif(1500, 0,1.05)
hSNR8<-GenSNR(h, 8, 0, 1.05)
hSNR12<-GenSNR(h, 12,0, 1.05)
hSNR8
hSNR12


##### i #####
c<- seq(1,7, length.out = 50)
i<-sapply(c, normSNR )
normSNR<-function(c){
  normV<-rnorm(1500, 1/2,1/(2*c))
  normSNR<-GenSNR(normV, 8, 0,1)
}
plot(c,i)

