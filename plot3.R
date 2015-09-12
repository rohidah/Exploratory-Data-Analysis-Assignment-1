########
# reading and slicing the data to only those dates fall between 1/2/2007 and 2/2/2007
########
setwd("C:/Users/rohidah/Documents/Exploratory Data Analysis/Assignment 1")
powerdata<- "./household_power_consumption.txt"
data <- read.table(powerdata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subpowerdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#######
# summarising 3 different types of subdata, Sub_metering_1, Sub_metering_2,Sub_metering_3
#######
datetime <- strptime(paste(subpowerdata$Date, subpowerdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalAP <- as.numeric(subpowerdata$Global_active_power)
subM1 <- as.numeric(subpowerdata$Sub_metering_1)
subM2 <- as.numeric(subpowerdata$Sub_metering_2)
subM3 <- as.numeric(subpowerdata$Sub_metering_3)

#########
#plotting the graph type datetime
#########
png("plot3.png", width=480, height=480)
plot(datetime, subM1, type="l", ylab="Energy sub metering", xlab="")
lines(datetime, subM2, type="l", col="red")
lines(datetime, subM3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off() 
