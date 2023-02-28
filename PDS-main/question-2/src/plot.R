
input<-read.csv("StudentsPerformance.csv")
attach(input)
       plot(writing.score,reading.score,main="plot in between writing and reading score",xlab="writing.score", ylab="reading.score", col="green")
       