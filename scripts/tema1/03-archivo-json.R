library(jsonlite)

dat.1 <- fromJSON("../../data/tema1/students.json")


dat.2 <- fromJSON("../../data/tema1/student-courses.json")

#el siguiente url da un json con la tasa de conversion de divisas actualizada
datosURL <- "http://www.floatrates.com/daily/usd.json"

conversion <- fromJSON(datosURL)

# Para accesar a traves de la lista
conversion[[20]]$rate 
# o a través de $
conversion$mxn$rate

library(dplyr)
#convertimos una lista en un data.frame
bind_rows(conversion)


