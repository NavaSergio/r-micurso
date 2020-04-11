data <-read.csv("../../data/tema1/missing-data.csv",na.strings = "")

data$Income.mean <- ifelse(is.na(data$Income),
                           mean(data$Income,na.rm = TRUE),
                           data$Income)

# vector de datos que puede contener NA
random.impute <- function(x){ 
  # missing contiene un vector de valores T/F dpenediendo del NA de x
  missing <- is.na(x)
  # n.missing contiene cuantos valores son NA dentro de x
  n.missing <- sum(missing)
  # x.obs son los valores que tienen dato diferente de NA en x
  x.obs <- x[!missing]
  #por defecto , devolveré lo mismo que había introducido por una muestra
  # de los que si conocemos (MAS)
  imputed <-x
  imputed[missing]<-sample(x.obs,n.missing,replace = TRUE)
  return(imputed)
}


random.impute.data.frame <- function(dataframe,cols){
  names <- names(dataframe)
  for (col in cols){
    name <-paste(names[col],"imputed",sep=".")
    dataframe[name]=random.impute(dataframe[,col])
  }
  dataframe
}

data <-read.csv("../../data/tema1/missing-data.csv",na.strings = "")

#convertir los ceros en NA´s
data$Income[data$Income==0] <- NA

data<-random.impute.data.frame(data,c(1,2))
