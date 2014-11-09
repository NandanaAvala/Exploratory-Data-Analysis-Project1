# Exploratory Data Analysis Project 1
# Plot 1
# Ensure raw data is in the working directory
# This script creates an image file "plot1.png" in the working directory

datafile <- "household_power_consumption.txt"

## Getting full dataset
alldata <- read.table(datafile, header = TRUE, sep =";",na.strings = "?")
# the na.strings will take care to ensure that data gets correct class

#plot1.png
png("plot1.png", width = 480, height = 480)
smalldata <- alldata[alldata$Date %in% c("1/2/2007","2/2/2007"),]
plotdata <- smalldata[,3]
plotdata <- smalldata$Global_active_power
hist(plotdata, col = "red", xlab = "Global Active Power (Kilowatts)", main = "Global Active Power")
dev.off()