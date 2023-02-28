

#data Processing
cleaned_data<-na.omit(data[data$Weight.Pounds.>=120,])
write.csv(cleaned_data,"cleaned_data.csv")


