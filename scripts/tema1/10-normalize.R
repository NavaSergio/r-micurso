
housing <- read.csv("../../data/tema1/BostonHousing.csv")

housing.z <-scale(housing)

housing.none <- scale(housing,center = FALSE,scale = FALSE)

housing.none <- scale(housing,center = FALSE,scale = FALSE)

scale.many <- function(dataframe,cols){
  names<-names(dataframe)
  for (col in cols){
    name<-paste(names[col],"z",sep=".")
    dataframe[name]<-scale(dataframe[,col])
  }
  cat(paste("Hemos normalizado ",length(cols)," variable(s)"))
  return(dataframe)
}
housing <- scale.many(housing,c(1,3,5:8))
