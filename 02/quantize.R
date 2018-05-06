
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
normSNR<-function(c){
  normV<-rnorm(1500, 1/2,1/(2*c))
  normSNR<-GenSNR(normV, 8, 0,1)
}

####### b #########
b<-sin(seq(0,pi,length=1500))
b_quant<-quantize(b,min= 0, max=1)
b_quant
b-b_quant

###### d #########
d<-sin(seq(0,pi,length=1500))
dSNR8<- GenSNR(d, 8,0,1)
dSNR12<-GenSNR(d, 12,0,1)
dSNR8
dSNR12
t<-vector(length=10)
t[1]<-(dSNR8)
t[2]<-(dSNR12)



###### e ########
e<-runif(1500, 0,1)
eSNR8<-GenSNR(e, 8, 0,1)
eSNR12<-GenSNR(e,12,0,1)
eSNR8
eSNR12
t[3]<-(eSNR8)
t[4]<-(eSNR12)

##### f ########
f<-rnorm(1500,1/2,1/8)
fSNR8<-GenSNR(f,8,0,1)
fSNR12<-GenSNR(f,12,0,1)
fSNR8
fSNR12
t[5]<-(fSNR8)
t[6]<-(fSNR12)

##### g #######
g<-seq(0,1, length.out = 1500)
gSNR8<-GenSNR(g,8,0,1)
gSNR12<-GenSNR(g,12,0,1)
gSNR8
gSNR12
t[7]<-(gSNR8)
t[8]<-(gSNR12)

##### h #######
h<-runif(1500, 0,1.05)
hSNR8<-GenSNR(h, 8, 0, 1.05)
hSNR12<-GenSNR(h, 12,0, 1.05)
hSNR8
hSNR12
t[9]<-(hSNR8)
t[10]<-(hSNR12)

##### i #####
c<- seq(1,7, length.out = 50)
SNR<-sapply(c, normSNR )
plot(c,SNR)


n1<-f<-rnorm(1500,1/2,1/(2*1))
n2<-f<-rnorm(1500,1/2,1/(2*2))
n3<-f<-rnorm(1500,1/2,1/(2*3))
n4<-f<-rnorm(1500,1/2,1/(2*4))
n5<-f<-rnorm(1500,1/2,1/(2*5))
n6<-f<-rnorm(1500,1/2,1/(2*6))
n7<-f<-rnorm(1500,1/2,1/(2*7))

#plot(n1)
n1DB<-decibel(n1)
n1Q<-quantize(n1, 8, 0,1)
n1R<-n1-n1Q
n1RDB<-decibel(n1R)
n1RDB
n1DB

#plot(n3)
n3DB<-decibel(n3)
n3Q<-quantize(n3, 8, 0,1)
n3R<-n3-n3Q
n3RDB<-decibel(n3R)
n3RDB
n3DB

plot(n5)
n5DB<-decibel(n5)
n5Q<-quantize(n5, 8, 0,1)
n5R<-n5-n5Q
n5RDB<-decibel(n5R)
n5RDB
n5DB

#plot(n7)
n7DB<-decibel(n7)
n7Q<-quantize(n7, 8, 0,1)
n7R<-n7-n7Q
n7RDB<-decibel(n7R)
n7RDB
n7DB



