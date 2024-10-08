source("~/Fran/Curso 24-25/1 TD/trabajo01/teoriadecision_funciones_incertidumbre.R")

# Enunciados de los problemas

#PROBLEMA 1: Sea la tabla de decisión con 4 estados de la naturaleza y 5
#alternativas de la siguiente forma:

X1=crea.tablaX(c(6,9,4,6,5,5,6,5,6,6,6,8,6,8,6,6,5,8,9,15),numalternativas = 5,numestados = 4)
X1


#Resolverla tanto para situación favorable como desfavorable, con cada uno de los 
#criterios por separado.

#PROBLEMA 2: José Ignacio está decidiendo con qué empresa firmar su primer contrato.
#Deloitte le paga 1300€ al mes y si se queda dos años, le costean un máster que
#desearía hacer; si lo comienza cuando lleve solo un año, le costean solo la mitad.
#Por otra parte, PWC le paga 1250€ al mes, y le costea la mitad del máster desde el
#primer momento. Una consultora pequeña le paga 1600€ pero no le costea nada del máster.
#EY le paga 1150€ y le costea el máster al completo si lo comienza cuando lleve al
#menos un año en la empresa. Finalmente, KPMG le paga 1400€ y le costea el 75% del
#máster si lo empieza tras llevar dos años en la empresa.
#Sabiendo que es posible que lo empiece a la vez que el trabajo, al llevar un año
#en el trabajo, dos años o que finalmente no lo haga, y que el coste del máster es
#6000€, plantea un problema de decisión bajo incertidumbre de forma que haya obtenido
#el máximo dinero posible tras 3 años trabajando (14 pagas por año).



X2=crea.tablaX(c(67200,61200,61200,61200,
                 54600,48600,51600,54600,
                 48300,42300,48300,48300,
                 58800,52800,52800,57300,
                 52500,49500,49500,49500),
               numalternativas = 5,numestados = 4)
colnames(X2)=c('sin máster','máster año 0','máster año 1','máster año 2')
rownames(X2)=c('pequeña consultora','Deloitte','EY','KPMG','PWC')
X2
