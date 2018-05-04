#### Aufgabe 2 #####

#Definitionsbereich
t <- seq(0,1,0.01)

#Sinuswelle
#Frequenz n =>1/n
fn <- function(n, A=(1/n), p=0){

  f <- A*sin(((2*pi)/(1/n))*t+p)
  
}

#pdf(file = 'sinus2.pdf')
#Layout der Plots
layout (matrix (c(1,2,3,4,5,6), ncol=2))

#### a #### 
plot(x = t, main = "Teil a", xlim = range(0:1), ylim = range(-1:1), xlab = 't', ylab = 'f')
for(n in seq(1:5)) lines(x = t,y = fn(n), col = n+1)

#### b ####
temp <- 0
for (n in seq(1:5)) {
  temp <- temp + fn(n)
}
plot(x = t,y = temp, type = 'l', xlim = range(0:1), ylim = range(-2:2), main = 'Teil b: Summe f?r n = 1...5', ylab = 'f')

#### c #### 
temp <- 0
for (n in seq(1:5)) {
  temp <- temp + fn(n, A = (1/2)**n)
}
plot(x = t,y = temp, type = 'l', xlim = range(0:1), ylim = range(-1:1), main = 'Teil c: A = (1/2)^n', ylab = 'f')

#### d ####
temp <- 0
for (n in seq(1:5)) {
  temp <- temp + fn(n, A = (1/sqrt(n)))
}
plot(x = t,y = temp, type = 'l', xlim = range(0:1), ylim = range(-3:3), main = 'Teil d: A = (1/sqrt(n)', ylab = 'f')

#### e ####
temp <- 0
for (n in seq(1:5)) {
  temp <- temp + fn(n, p=(pi/3))
}
plot(x = t,y = temp, type = 'l', xlim = range(0:1), ylim = range(-3:3), main = 'Teil e: p=(pi/3)', ylab = 'f')

#### f ####
temp <- 0
for (n in seq(2,10,2)) {
  temp <- temp + fn(n)
}
plot(x = t,y = temp, type = 'l', xlim = range(0:1), ylim = range(-1:1), main = 'Teil f: Summe f?r n = 2,4,6,8,10', ylab = 'f')

#
layout (1) 
#dev.off()