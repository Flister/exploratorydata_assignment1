To load data:

filename <- "./week1.txt"  
data <- read.table(filename,  
header=TRUE,sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
dim(data)
attach(data)  
subset <- Date=="1/2/2007" | Date=="2/2/2007"  
newData <- data[subset, ]  
attach(newData)  
x <- paste(Date, Time)  
