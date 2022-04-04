str(nbaestadisticas)
library(dplyr)
library(shiny)

# Equipo de Los Angeles Lakers con mas puntos en una temporada
nbaestadisticas$lal = (nbaestadisticas$Team == "Los Angeles Lakers" | nbaestadisticas$Team == "Los Angeles Lakers*")
lal = subset(nbaestadisticas,nbaestadisticas$lal==TRUE)
maxPts = max(lal$PTS)
lalfg = filter(lal,PTS == maxPts)
print(lalfg)


#Equipo con mejor porcentaje de tiro de 3 entre 2002-2018

equiposTripl = subset(nbaestadisticas,nbaestadisticas$Year > 2001 & nbaestadisticas$Year < 2018)
equiposTripl
maxTripl = max(equiposTripl$X3P.)
equipoTriplista = subset(equiposTripl,equiposTripl$X3P. == maxTripl)
equipoTriplista


#Equipo menos reboteador entre 1990-2000

equiposReb  = subset(nbaestadisticas,nbaestadisticas$Year > 1990 & nbaestadisticas$Year < 2000)
equiposReb
minReb = min(nbaestadisticas$ORB+nbaestadisticas$DRB)
equipoMinReb = subset(equiposReb,equiposReb$ORB+equiposReb$DRB == minReb)
equipoMinReb



#Todos los campeones de todas las temporadas desde 1980 hasta 2019
champ = subset(nbaestadisticas$Team,nbaestadisticas$Rk == 1)
print(champ)

bestfg = nbaestadisticas$Team[which.max(nbaestadisticas$`FG%`)]
print(bestfg)
str(nbaestadisticas)


#Graficas

#1
equiposMasPuntos = subset(nbaestadisticas,nbaestadisticas$PTS > 1100)
mean(nbaestadisticas$FG)


#2 La correlacion entre los robos y el tov que es el porcentaje de acierto en el contrataque
equiposMenosLadrones = subset(nbaestadisticas,nbaestadisticas$STL <= 70)
mean(equiposMenosLadrones$TOV)
equiposMasLadrones = subset(nbaestadisticas,nbaestadisticas$STL >= 100)
mean(equiposMasLadrones$TOV)

s1 = subset(nbaestadisticas,nbaestadisticas$Year == 2016 & nbaestadisticas$Rk <= 5)


