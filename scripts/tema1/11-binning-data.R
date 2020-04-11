students <- read.csv("../../data/tema1/data-conversion.csv")

bp <- c(-Inf,10000,31000,Inf)
names <- c("Low","Average","High")
students$Income.cat <- cut(students$Income,breaks=bp,labels =names)
students$Income.cat2 <- cut(students$Income,breaks=bp)

students$Income.cat3 <- cut (students$Income,
                             breaks = 4,
                             labels = c("level 1","level 2","level 3","level 4"))
range(students$Income)


#dummy variables
students <- read.csv("../../data/tema1/data-conversion.csv")
library(dummies)

students.dummy <- dummy.data.frame(students,sep=".")


dummy(students$State)

dummy.data.frame(students,names = c("State","Gender"))


