
input<-read.csv("StudentsPerformance.csv")
attach(input)

qqplot(math.score,reading.score,main="sunflowerplot between math and reading",xlab="math score",ylab="reaading score",col="yellow")
