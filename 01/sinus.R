#### sinus.pdf ? ####


#t <- seq(1,5,0.1)

#w <- 1/t #Frequenz

#####???
fn <- function(n, A=(1/n), p=0){

  f <- A*sin(2*pi*w*t+p)
  
}


layout (matrix (c(1,2,3,4,5,6), ncol=2))

#####a#####
#(a) Ein Feld mit den fÃ¼nf Wellen f1; : : : ; f5.
#plot() line()

#####b#####
#(b) Ein Feld mit der Summenkurve f1 + f2 + f3 + f4 + f5.
#plot(sum())

#####c#####
#(c) Wie Feld (b), aber mit den Amplituden An = (1\2)n, n = 1; : : : ; 5.

#####d####
#(d) Wie Feld (b), aber mit den Amplituden An = 1\sqrt(n), n = 1; : : : ; 5.

#####e####
#(e) Wie Feld (b), aber mit den Phasen p= pi/3, n = 1; : : : ; 5.

####f####
#(f) Ein Feld mit der Summenkurve f2 + f4 + f6 + f8 + f10


#####Bsp##### - löschen
x <- c (runif (123), rnorm (50, mean=2, sd=0.5))

boxplot (x, col="green")
plot (sort(x), col="blue", type="l")
hist (x, col="red", lab=TRUE, main="")
boxplot (x, col="green")
plot (sort(x), col="blue", type="h")
hist (x, col="red", lab=TRUE, main="")
######

layout (1) 

