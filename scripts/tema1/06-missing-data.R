
data <-read.csv("../../data/tema1/missing-data.csv",na.strings = "")

data.cleaned <- na.omit(data)

is.na(data[4,2])
is.na(data$Income)

#Limpiar NA de solamente la variable Incom
data_income_clede <- data[!is.na(data$Income),]

# filas completas para un data.frame
complete.cases(data)

data.cleaned.2 <- data[complete.cases(data),]

#convertir los ceros en NA´s
data$Income[data$Income==0] <- NA

#medidas de centralización y dispersión
mean(data$Income)
mean(data$Income,na.rm = TRUE)

sd(data$Income)
sd(data$Income,na.rm=TRUE)


