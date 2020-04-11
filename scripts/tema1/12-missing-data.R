housing.data <- read.csv("../../data/tema1/housing-with-missing-value.csv",
                         header = TRUE, 
                         stringsAsFactors = FALSE)


summary(housing.data)

#Eliminar todas las observaciones que tengan algún NA 
housing.data.1 <- na.omit(housing.data)
summary(housing.data.1)

#Eliminar las NA de ciertas columnas 
# se conservan los NA´s de "rad".
drop_na <- c("rad")
housing.data.2 <- housing.data[
  complete.cases(housing.data[,!(names(housing.data) %in% drop_na)]),]

summary(housing.data.2)


#para eliminar toda una columna
housing.data$rad <-NULL

#en caso en que se quieran eliminar varias columnas
drops <- c("rad","ptratio")
housing.data.3 <- housing.data[,!(names(housing.data) %in% drops)]

summary(housing.data.3)

library(Hmisc)
# Se puede imputar con la media
housing.data.copy1 <- housing.data
housing.data.copy1$ptratio <- impute(housing.data.copy1$ptratio,mean)
housing.data.copy1$rad <- impute(housing.data.copy1$rad,mean)
summary(housing.data.copy1)

# Se puede imputar con la mediana
housing.data.copy2 <- housing.data
housing.data.copy2$ptratio <- impute(housing.data.copy2$ptratio,median)
housing.data.copy2$rad <- impute(housing.data.copy2$rad,median)
summary(housing.data.copy2)


# Se puede imputar con un número arbitrario.
housing.data.copy3 <- housing.data
housing.data.copy3$ptratio <- impute(housing.data.copy3$ptratio,18)
housing.data.copy3$rad <- impute(housing.data.copy3$rad,7)
summary(housing.data.copy3)

library(mice)
md.pattern(housing.data)

library(VIM)


