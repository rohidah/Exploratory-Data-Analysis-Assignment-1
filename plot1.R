########
# readind and slicing the data to only those dates fall between 1/2/2007 and 2/2/2007
########
setwd("C:/Users/rohidah/Documents/Exploratory Data Analysis/Assignment 1")
powerdata<- "./household_power_consumption.txt"
data <- read.table(powerdata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subpowerdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#######
# plotting graph using histogram reflecting the frequency of  Global Active Power data.
# x-axis is labelled as "Global Active Power(kilowatts) against y-axis labelled as frequency.
# color of histogram is red and title is "Global Active Power"
#######
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off() 
  

