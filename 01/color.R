load (file='color.rda')

plot.array (rlogo)
# 
# Im Folgenden sollen Sie bitte mit dem array-Konstruktor leere quadratische RGB
# Bilder mit Seitenlänge n = 25 erzeugen, nach Anweisung mit Werten auffüllen und ab
# schließend durch einen plot.array-Aufruf darstellen. Verwenden Sie bei Bedarf Lauf
# schleifen ( ?’for’) und Wertverzweigungen ( ?’if’).
# Vorbereitend legen Sie mit einem geeigneten seq-Aufruf bitte einen Vektor mit n = 25
# äquidistant von 0 auf 1 ansteigenden Intensitätswerten b1; : : : ; bn an.

# (a) Erzeugen Sie ein Graustufenbild; alle Pixel der i-ten Zeile erhalten die Farbkanalwerte
# bi.

# (b) Erzeugen Sie ein Grünstufenbild; alle Pixel der j-ten Spalte erhalten als Grünwert
# bj, sonst 0.

# (c) Erzeugen Sie ein Rot-Blau-Bild; in der Vertikalen nimmt der Rotwert zu, in der
# Horizontalen der Blauwert.

# (d) Wie (c), aber füllen Sie nun den Grünwert auf, so dass sich die Intensitätssumme 1
# ergibt.
# Achtung: Pixel mit R + B > 1 belassen Sie einfach schwarz.

# (e) Heben Sie die Farbwerte in (d) multiplikativ an, so dass der höchste Farbwert 1 ist.

# (f) Heben Sie die Farbwerte in (d) additiv an, so dass der höchste Farbwert 1 ist.