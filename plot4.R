# Exploratory Data Analysis Project 1
# Plot 4
# Ensure raw data is in the working directory
# This script creates an image file "plot4.png" in the working directory

datafile <- "household_power_consumption.txt"

## Getting full dataset
alldata <- read.table(datafile, header = TRUE, sep =";",na.strings = "?")

#plot4.png
png("plot4.png", width = 480, height = 480)
smalldata <- alldata[alldata$Date %in% c("1/2/2007","2/2/2007"),]

x <- paste(smalldata[,1],smalldata[,2])

datetimecol <- strptime(x, "%d/%m/%Y %H:%M:%S")

par(mfrow = c(2,2))

with(smalldata,{
  plot(datetimecol,Global_active_power,type="l", ylab = "Global Active Power (kilowatts)",xlab = "")
  plot(datetimecol,Voltage,type="l",ylab= "Voltage", xlab = "datetime")
  plot(datetimecol, smalldata[,7], type = "l", ylab = "Energy sub metering", xlab = "")
  points(datetimecol, smalldata[,8], col = "red", type = "l")
  points(datetimecol, smalldata[,9], col = "blue", type = "l")
  
  legendvector <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  legend("topright", legend = legendvector, lty =1, col = c("black","red","blue"))
  
  plot(datetime,Global_reactive_power,type="l")
})

dev.off()