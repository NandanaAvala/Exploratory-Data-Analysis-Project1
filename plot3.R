# Exploratory Data Analysis Project 1
# Plot 3
# Ensure raw data is in the working directory
# This script creates an image file "plot3.png" in the working directory

datafile <- "household_power_consumption.txt"

## Getting full dataset
alldata <- read.table(datafile, header = TRUE, sep =";",na.strings = "?")

#plot3.png
png("plot3.png", width = 480, height = 480)
smalldata <- alldata[alldata$Date %in% c("1/2/2007","2/2/2007"),]

plot(datetimecol, smalldata[,7], type = "l", ylab = "Energy sub metering")
points(datetimecol, smalldata[,8], col = "red", type = "l")
points(datetimecol, smalldata[,9], col = "blue", type = "l")

legendvector <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
legend("topright", legend = legendvector, lty =1, col = c("black","red","blue"))
dev.off()
