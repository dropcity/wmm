# Definieren Sie vier Funktionen fcos, fsin, fsum, fpol für den Kosinusterm, den
#Sinusterm, die Summe auf der linken Gleichungsseite und die Polarform der rechten
#Seite.
#Geeignete Operationen zur Berechnung von A und φ aus a und b finden Sie mit den
#Hilferufen ?sqrt und ?atan.

fcos <- function(){
  
}
fsin <- function(){
  
}
fsum <- function(){
  
}
fpol <- function(){
  
}

#Zeichnen Sie die vier Funktionen mit unterschiedlichen Farben in ein gemeinsames
#Koordinatensystem mit Definitionsbereich 0 ≤ x ≤ 8. Verwenden Sie (z.B.) plotAufrufe und wählen Sie Punktdarstellung #für fpol und Liniendarstellung für die drei
#anderen Verläufe

plot (x,y, add=TRUE, type = 'l') # sonst
plot (x,y, add=TRUE, type = 'p') # fpol

#pdf(file=’Rplot.pdf’, fpol)

##### polar.pdf ?