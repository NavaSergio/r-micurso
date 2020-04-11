library(XML)

url <- "../../data/tema1/cd_catalog.xml"
xmldoc <- xmlParse(url)
rootnode <- xmlRoot(xmldoc)
rootnode[1]

cds_data <- xmlSApply(rootnode,function(x) xmlSApply(x,xmlValue))
cds_catalog <- data.frame(t(cds_data),row.names = NULL)

head(cds_catalog,2)
cds_catalog[1:5,]


population <-"../../data/tema1/WorldPopulation-wiki.htm"
tables <- readHTMLTable(population)
most_populated <-tables[[6]]
head(most_populated)


custom_table <- readHTMLTable(population,which = 6)
