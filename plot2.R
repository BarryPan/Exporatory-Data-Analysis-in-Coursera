data=read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
data$Date=as.Date(data$Date,"%d/%m/%Y")
x=which(data$Date%in%c(as.Date("2007-02-01"),as.Date("2007-02-02")))
usedata=data[x,]
usedata$Weekday=weekdays(usedata$Date)
plot(usedata$Global_active_power,type="l",axes=F,xlab="",ylab="Global Active Power (kilowatts)")
axis(2)
axis(1,at=c(1,min(which(usedata$Weekday=="¬P´Á¤­")),length(usedata[,1])),labels=c("Thu","Fri","Sat"))