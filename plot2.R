# Script for completing project 1 of the Coursera
#  'Exploratory Data Analysis' course.
# Plots the needed 'plot2.png' makes use of 'prepScript.R'

source("prepScript.R");
png("./figure/plot2.png", bg = "transparent");
with(dataPower, plot(dateTime, global.active.power, type = "l", ylab = "Global Active Power (kilowatts)"));
dev.off();