load (file='color.rda')
plot(rlogo)

intensity <- seq(0,1,length.out = 25) 

#####a#####
# (a) Erzeugen Sie ein Graustufenbild; alle Pixel der i-ten Zeile erhalten die Farbkanalwerte
# bi.
img.a <- array(0,dim = c(25,25,3))
img.a[1:25,1:25,1:3] <- intensity[1:25]
plot.array(img.a)

######b#####
# (b) Erzeugen Sie ein Grünstufenbild; alle Pixel der j-ten Spalte erhalten als Grünwert
# bj, sonst 0.
########SPALTE?
img.b <- array(0,dim = c(25,25,3))
img.b[1:25,1:25,2] <- intensity[1:25]
img.b[5,1:25,2]<- intensity[1:25]
plot.array(img.b)
#####c#####
# (c) Erzeugen Sie ein Rot-Blau-Bild; in der Vertikalen nimmt der Rotwert zu, in der
# Horizontalen der Blauwert.
#######HORIZONTAL ???
img.c  <- array(0,dim = c(25,25,3))
img.c[25:1,1:25,1] <- intensity[1:25]
img.c[1:25,1:25,3] <- intensity[1:25]
plot.array(img.c)
#####d#####
# (d) Wie (c), aber füllen Sie nun den Grünwert auf, so dass sich die Intensitätssumme 1
# ergibt.
# Achtung: Pixel mit R + B > 1 belassen Sie einfach schwarz.

#####e#####
# (e) Heben Sie die Farbwerte in (d) multiplikativ an, so dass der höchste Farbwert 1 ist.

#####f#####
# (f) Heben Sie die Farbwerte in (d) additiv an, so dass der höchste Farbwert 1 ist.