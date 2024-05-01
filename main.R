setwd("C:/Users/malak/OneDrive/Desktop/project")
data <- data <- read.csv("data.csv")
head(data)

#1
data[1:10, ]
tail(data, n=10)
#2
orderedData <- data[order(data$dob),]
orderedData[1:3,c("gender", "avg_commute", "ancestry", "disease")]
#3
data[data$children>2 ,c("gender", "daily_internet_use", "avg_commute", "ancestry", "disease")]

#4
table(complete.cases(data))

#5
summary(data)

#6

#sapply(data, function(x) sum(is.na(x)))
colnames(data)[apply(data, 2, anyNA)]

#7
av <- tapply(data$daily_internet_use, data$education, mean, na.rm = TRUE)
av

#8
hist(data$children)

#9
women <- subset(data, gender== "female")
men <- subset(data, gender== "male")
men
#plot(women$avg_commute, col="red",lwd=2, xlab="" , ylab=" ",main="",bty="n")
#plot(men$avg_commute, col="blue",lwd=2, xlab="" , ylab=" ",main="",bty="n")
#lines(v=women$avg_commute,b=1,lwd=3,col="green")
#lines(v=men$avg_commute,b=1,lwd=3,col="blue")

#10
hist(table(data$gender))

#14
hist(table(data$ancestry))






