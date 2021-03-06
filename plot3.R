filename <- "./exdata-data-household_power_consumption/household_power_consumption.txt"
dataTmp <- read.csv(file = filename, header=T, sep=";", stringsAsFactors=FALSE, dec=".")
data <- dataTmp[dataTmp$Date %in% c("1/2/2007","2/2/2007") ,]
remove(dataTmp)

# plot 3
time <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
x1 <- as.numeric(data$Sub_metering_1)
x2 <- as.numeric(data$Sub_metering_2)
x3 <- as.numeric(data$Sub_metering_3)


png("plot3.png", width=480, height=480)

plot(time, x1, 
     type="l", 
     xlab="", 
     ylab="Energy sub metering"
)
lines(time, x2, 
      type="l", 
      col="red"
      )
lines(time, x3, 
      type="l", 
      col="blue"
      )

legend("topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, 
       col=c("black", "red", "blue")
       )

dev.off()