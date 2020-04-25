source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")

# extract only the entries from 1/2/2007 til 2/2/2007
# For Unix-based OS
system('cat household_power_consumption.txt | grep "^[12]/2/2007" > data.txt ')

# Loading the data
col.names <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
data <- read.table(file = "data.txt",sep = ";",header = F,col.names = col.names)

# Transform Date and Time columns into one datetime column
data$Datetime <- paste(data$Date,data$Time)
data$Datetime <- strptime(data$Datetime, format = "%d/%m/%Y %H:%M:%S")

# Drop the date column because it's provided by the datetime column
data <- data[,c(-1,-2)]

# Constructing and saving the plots the plots
# plot 1
png("plot1.png",width = 480, height = 480)
construct.plot1()
dev.off()

# plot 2
png("plot2.png",width = 480, height = 480)
construct.plot2()
dev.off()

# plot 3
png("plot3.png",width = 480, height = 480)
construct.plot3()
dev.off()

# plot 4
png("plot4.png",width = 480, height = 480)
construct.plot4()
dev.off()
