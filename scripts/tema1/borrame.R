library(readr)
auto_mpg <- read_csv("~/Documents/GitHub/r-micurso/data/tema1/auto-mpg.csv")
View(auto_mpg)
auto.mp = read.csv("../../data/tema1/auto-mpg-noheader.csv",
                   header = FALSE,col.names = c("numero",
                  "millas_por_galon","cilindrada",
                  "desplazamiento","caballos_de_potencia","peso",
                  "aceleracion","año","modelo"))
