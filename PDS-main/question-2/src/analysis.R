#hist
input<-read.csv("StudentsPerformance.csv")
attach(input)
hist(reading.score,main="histogram in between reading and writing score",xlab="reading score",col="orange")

#pairs

input<-read.csv("StudentsPerformance.csv")
attach(input)
pairs(~writing.score+math.score+reading.score,data=data,main="contrast between writing, math, and reading scores", col="pink")

#plot

input<-read.csv("StudentsPerformance.csv")
attach(input)
plot(writing.score,reading.score,main="plot in between writing and reading score",xlab="writing.score", ylab="reading.score", col="green")

#qqplot

input<-read.csv("StudentsPerformance.csv")
attach(input)

qqplot(math.score,reading.score,main="sunflowerplot between math and reading",xlab="math score",ylab="reaading score",col="yellow")

#sunflowerplot

input<-read.csv("StudentsPerformance.csv")
attach(input)

sunflowerplot(reading.score,writing.score,main="sunflowerplot between reading and math",xlab="reading score",ylab="writing score",col="purple")