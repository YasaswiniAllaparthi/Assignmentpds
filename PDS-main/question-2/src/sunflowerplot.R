
input<-read.csv("StudentsPerformance.csv")
attach(input)

sunflowerplot(reading.score,writing.score,main="sunflowerplot between reading and math",xlab="reading score",ylab="writing score",col="purple")
