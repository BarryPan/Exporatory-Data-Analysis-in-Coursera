data=read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
data$Date=as.Date(data$Date,"%d/%m/%Y")
x=which(data$Date%in%c(as.Date("2007-02-01"),as.Date("2007-02-02")))
usedata=data[x,]
usedata$Weekday=weekdays(usedata$Date)
hist(usedata$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")
