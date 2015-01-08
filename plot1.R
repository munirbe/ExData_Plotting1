# Script for completing project 1 of the Coursera
#  'Exploratory Data Analysis' course.
# Plots the needed 'plot1.R' makes use of 'prepScript.R'

source("prepScript.R");
png("./figure/plot1.png", bg = "transparent");
hist(dataPower$global.active.power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)");
dev.off();