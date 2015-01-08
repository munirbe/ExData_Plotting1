# This script will download (if not done already) and
#  unzip the 'household_power_consumption.zip'.
# In a second step, it will read in the data and subset it.

url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip";

if(!file.exists("./data/household_power_consumption.txt")) {
    download.file(url, destfile = "./data/household_power_consumption.zip");
    unzip("./data/household_power_consumption.zip", exdir = "./data");
    file.remove("./data/household_power_consumption.zip");
}

# Read in data with correct parameter for 'read.table'.
# Do some customization on the variable names.
if(!exists("dataPower")) {
dataPower <- read.table("./data/household_power_consumption.txt", sep = ";", na.strings = "?", header = T);
names(dataPower) <- gsub("_", ".", names(dataPower));
names(dataPower) <- tolower(names(dataPower));

# Convert dates and extract correct dates and
#  removes first two columns
dataPower$date <- as.Date(dataPower$date, format = "%d/%m/%Y");
dataPower <- subset(dataPower, date == "2007-02-01" | date =="2007-02-02");
dataPower$dateTime <- strptime(paste(dataPower$date, dataPower$time), format = "%Y-%m-%d %H:%M:%S");
dataPower <- dataPower[, 3:10];
}