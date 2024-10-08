source("~/Fran/Curso 24-25/1 TD/trabajo01/teoriadecision_funciones_incertidumbre.R")

# Enunciados de los problemas

#PROBLEMA 1: Sea la tabla de decisión con 4 estados de la naturaleza y 5
#alternativas de la siguiente forma:

X1=crea.tablaX(c(6,9,4,6,5,5,6,5,6,6,6,8,6,8,6,6,5,8,9,15),numalternativas = 5,numestados = 4)
X1

#Situación favorable
criterio.Wald(X1) #Alternativa 3
criterio.Optimista(X1) #Alternativa 5
criterio.Hurwicz(X1) #Alternativa 5
criterio.Hurwicz.General(X1) #Alternativa 5
dibuja.criterio.Hurwicz(X1)
dibuja.criterio.Hurwicz_Intervalos(X1)
#Intervalo (0,0.125) -> Alternativa 3
#Intervalo (0.125,1) -> Alternativa 5
criterio.Savage(X1) #Alternativa 5
criterio.Laplace(X1) #Alternativa 5
criterio.PuntoIdeal(X1) #Alternativa 5

#Situación desfavorable
criterio.Wald(X1,favorable = FALSE) #Alternativa 2
criterio.Optimista(X1,favorable = FALSE) #Alternativa 1
criterio.Hurwicz(X1,favorable = FALSE) #Alternativa 2
criterio.Hurwicz.General(X1,favorable = FALSE) #Alternativa 2
dibuja.criterio.Hurwicz(X1,favorable = FALSE)
dibuja.criterio.Hurwicz_Intervalos(X1,favorable = FALSE)
#Intervalo (0,0.75) -> Alternativa 2
#Intervalo (0.75,1) -> Alternativa 1
criterio.Savage(X1,favorable = FALSE) #Alternativa 2
criterio.Laplace(X1,favorable = FALSE) #Alternativa 2
criterio.PuntoIdeal(X1,favorable = FALSE) #Alternativa 2


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

criterio.Todos(X2,favorable = T)

#                               Wald          Optimista           au  Hurwicz             Savage            Laplace        Punto Ideal
#pequeña consultora            61200              67200               63000                  0              62700                  0
#Deloitte                      48600              54600               50400              12600              52350              21289
#EY                            42300              48300               44100              18900              46800              32361
#KPMG                          52800              58800               54600               8400              55425              15063
#PWC                           49500              52500               50400              14700              50250              25035
#iAlt.Opt (fav.)  pequeña consultora pequeña consultora  pequeña consultora pequeña consultora pequeña consultora pequeña consultora

