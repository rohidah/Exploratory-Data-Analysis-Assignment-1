########
# reading and slicing the data to only those dates fall between 1/2/2007 and 2/2/2007
########
setwd("C:/Users/rohidah/Documents/Exploratory Data Analysis/Assignment 1")
powerdata<- "./household_power_consumption.txt"
data <- read.table(powerdata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subpowerdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#######
# plotting graph using datetime reflecting the usage of Global Active Power data on certain days
# x-axis leblled as as Thur, Fri and Sat while y-axis labelled as  "Global Active Power(kilowatts).
#######
datetime <- strptime(paste(subpowerdata$Date, subpowerdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalAP <- as.numeric(subpowerdata$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()