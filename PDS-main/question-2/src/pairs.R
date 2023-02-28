
input<-read.csv("StudentsPerformance.csv")
attach(input)
 pairs(~writing.score+math.score+reading.score,data=data,main="contrast between writing, math, and reading scores", col="pink")
