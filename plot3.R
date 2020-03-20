data <- read.table("household_power_consumption.txt",sep = ";",skip = 66637, nrow = 2880)

data$V1 <- strptime(paste(data$V1, data$V2, sep = " ", collapse = NULL), "%d/%m/%Y %H:%M:%S")

# plot3
png("plot3.png")
plot(data$V1, data$V7, col = 'black', type = 'l', xlab = '', ylab = 'Energy sub metering')
lines(data$V1, data$V8, col="red")
lines(data$V1, data$V9, col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col=c("black","red","blue"),lty = 1)
dev.off()