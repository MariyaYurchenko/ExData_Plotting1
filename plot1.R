filename <- "./exdata-data-household_power_consumption/household_power_consumption.txt"
dataTmp <- read.csv(file = filename, header=T, sep=";", stringsAsFactors=FALSE, dec=".")
data <- dataTmp[dataTmp$Date %in% c("1/2/2007","2/2/2007") ,]
remove(dataTmp)

# plot 1
x <- as.numeric(data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(x, 
     col = "red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)"
)
dev.off()