# Exploratory Data Analysis Project 1
# Plot 2
# Ensure raw data is in the working directory
# This script creates an image file "plot2.png" in the working directory

datafile <- "household_power_consumption.txt"

## Getting full dataset
alldata <- read.table(datafile, header = TRUE, sep =";",na.strings = "?")

#plot2.png
png("plot2.png", width = 480, height = 480)
smalldata <- alldata[alldata$Date %in% c("1/2/2007","2/2/2007"),]

x <- paste(smalldata[,1],smalldata[,2])

datetimecol <- strptime(x, "%d/%m/%Y %H:%M:%S")

plot(datetimecol, smalldata[,3])
plot(datetimecol, smalldata[,3], type = "l")
plot(datetimecol, smalldata[,3], type = "l", ylab = "Global Active Power (Kilowatts)")
dev.off()