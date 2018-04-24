#### Aufgabe 1 #####
#Julia Böhlke
#Selina Müller

fdraw <- function(x = seq(0,8,0.1)){
 # plot(x, y = fcos(x), type = 'l', col = 'red', xlab = 'x', ylab = 'y')
  #lines(x, y = fsin(x), col = 'blue')
  plot(x, y = fsum(x), col = 'green') 
  points(x, y = fpol(x), col = 'yellow')
}

#Cosinusterm
fcos <- function(x){
    
}
#Sinusterm
fsin <- function(x){
  
}
#linke Summe
fsum <- function(x){
  return(-3*cos(x)-4*sin(x))
}
#Polarform ----- mit A ?
fpol <- function(x){
 A <- sqrt((-3)**2 + (-4)**2) 
 p <- atan(-(-4)/(-3))
 
 return(A*cos(x+p))
}

#pdf(file="Rplot.pdf", fpol)

##### polar.pdf ?