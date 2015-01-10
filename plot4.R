# Script for completing project 1 of the Coursera
#  'Exploratory Data Analysis' course.
# Plots the needed 'plot4.R' makes use of 'prepScript.R'

source("prepScript.R");
png("./figure/plot4.png", bg = "transparent");
par(mfrow = c(2, 2));
with(dataPower, plot(dateTime, global.active.power, type = "l", ylab = "Global Active Power (kilowatts)"));
with(dataPower, plot(dateTime, voltage, ylab = "Voltage", type = "l"));
with(dataPower, plot(dateTime, sub.metering.1, type = "l", col = "black", ylab = "Energy sub metering", xlab = ""));
with(dataPower, lines(dateTime, sub.metering.2, type = "l", col = "red"));
with(dataPower, lines(dateTime, sub.metering.3, type = "l", col = "blue"));
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = "solid", col = c("black", "red", "blue"));
with(dataPower, plot(dateTime, global.reactive.power, ylab = "Global_reactive_power", type = "l"));
dev.off();