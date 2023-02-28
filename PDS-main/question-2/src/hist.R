
input<-read.csv("StudentsPerformance.csv")
attach(input)
       hist(reading.score,main="histogram in between reading and writing score",xlab="reading score",col="orange")
