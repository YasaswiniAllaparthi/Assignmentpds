#data Acquisition
data<-read.csv("Frailty_data.csv")

#data Processing
cleaned_data<-na.omit(data[data$Weight.Pounds.>=120,])
write.csv(cleaned_data,"cleaned_data.csv")

#data Analysis
testing_data<-t.test(cleaned_data$Age,cleaned_data$Grip.Strength,paired=TRUE)
capture.output(testing_data,file="testing_results.txt")
attach(cleaned_data)
plot(Age,Grip.Strength,main="Plot between Age and Grip ",
     xlab="Age",ylab="Grip",col="green")


