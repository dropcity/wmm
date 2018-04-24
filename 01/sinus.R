#### sinus.pdf ?

#Es bezeichne fn : IR ! IR die Sinuswelle der Frequenz n Hertz mit der Amplitude An = 1=n
#und der Phasenverschiebung φn = 0 (ME-Skript II.2, Blatt 2).
#Erstellen Sie mit ’R’ eine sechsfeldrige Grafik (z.B. mit layout-Aufruf) mit Definitionsbereichen [0; 1] ⊂ IR und #folgenden Inhalten:

layout (matrix (c(1,2,3,4,5,6), ncol=2))

#(a) Ein Feld mit den fünf Wellen f1; : : : ; f5.

#(b) Ein Feld mit der Summenkurve f1 + f2 + f3 + f4 + f5.

#(c) Wie Feld (b), aber mit den Amplituden An = (1=2)n, n = 1; : : : ; 5.

#(d) Wie Feld (b), aber mit den Amplituden An = 1=pn, n = 1; : : : ; 5.

#(e) Wie Feld (b), aber mit den Phasen φn = π=3, n = 1; : : : ; 5.

#(f) Ein Feld mit der Summenkurve f2 + f4 + f6 + f8 + f10


##
x <- c (runif (123), rnorm (50, mean=2, sd=0.5))

boxplot (x, col="green")
plot (sort(x), col="blue", type="l")
hist (x, col="red", lab=TRUE, main="")
boxplot (x, col="green")
plot (sort(x), col="blue", type="h")
hist (x, col="red", lab=TRUE, main="")

layout (1) 

######
