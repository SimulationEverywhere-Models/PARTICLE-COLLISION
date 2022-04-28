
Date: 20/6/2004
Name:  
Version 1 

Simulacion en fluido de gases:

Hay particulas identicas que se mueven a una velocidad de una unidad de tiempo
en una de las 4 posibles direcciones. Las particulas estan representadas por
un valor que indica:
    en su parte entera, la direccion.
    en su parte real, el grado de pureza de la particula, perteneciente al
        intervalo [0,1).

Las particulas aisladas se mueven en lineas rectas. Cuando dos particulas que
vienen de distintas direcciones (de frente, es decir formando un angulo de
180 grados) se chocan, el par se destruye, y se crea un nuevo par, viajando en
un nuevo angulo de 90 grados con respecto al anterior, y su pureza se promedia
con el valor con el que choco.
Si chocan formando un angulo de 90 grados, entonces una las particulas se
fusionan formando solo una particula. El grado de pureza se promedia como en
el caso anterior, y la direccion correspondera a la de la direccion
de una de la particula anterior (que participo en el choque) que tenga mayor
pureza.
En todos los demas casos siguen derecho.