# Script for completing project 1 of the Coursera
#  'Exploratory Data Analysis' course.
# Plots the needed 'plot3.png' makes use of 'prepScript.R'

source("prepScript.R");
png("./figure/plot3.png", bg = "transparent");
#plot(rep(dataPower$dateTime, times = 3), c(dataPower[, 5], dataPower[, 6], dataPower[, 7]), ylab = "Energy sub metering", type = "l");
with(dataPower, plot(dateTime, sub.metering.1, type = "l", col = "black", ylab = "Energy sub metering", xlab = ""));
with(dataPower, lines(dateTime, sub.metering.2, type = "l", col = "red"));
with(dataPower, lines(dateTime, sub.metering.3, type = "l", col = "blue"));
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = "solid", col = c("black", "red", "blue"));
dev.off();