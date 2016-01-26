filename <- "./exdata-data-household_power_consumption/household_power_consumption.txt"
dataTmp <- read.csv(file = filename, header=T, sep=";", stringsAsFactors=FALSE, dec=".")
data <- dataTmp[dataTmp$Date %in% c("1/2/2007","2/2/2007") ,]
remove(dataTmp)

# plot 2
time <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
x <- as.numeric(data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(time, x, 
     type="l", 
     xlab="", 
     ylab="Global Active Power (kilowatts)"
)
dev.off()