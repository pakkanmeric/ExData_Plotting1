data <- read.table("household_power_consumption.txt",sep = ";",skip = 66637, nrow = 2880)

data$V1 <- strptime(paste(data$V1, data$V2, sep = " ", collapse = NULL), "%d/%m/%Y %H:%M:%S")

# plot4
png("plot4.png")
par(mfrow=c(2,2))
plot(data$V1, data$V3, type = 'l', xlab = '', ylab = 'Global Active Power')
plot(data$V1, data$V5, type = 'l', xlab = 'datetime', ylab = 'Voltage')
plot(data$V1, data$V7, col = 'black', type = 'l', xlab = '', ylab = 'Energy sub metering')
lines(data$V1, data$V8, col="red")
lines(data$V1, data$V9, col="blue")
legend("topright", inset = .01, legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col=c("black","red","blue"),lty = 1, box.lty=0, cex = 0.9)
plot(data$V1, data$V4, type = 'l', xlab = 'datetime', ylab = 'Global_reactive_power')

dev.off()