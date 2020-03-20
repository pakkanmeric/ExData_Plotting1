data <- read.table("household_power_consumption.txt",sep = ";",skip = 66637, nrow = 2880)

data$V1 <- strptime(paste(data$V1, data$V2, sep = " ", collapse = NULL), "%d/%m/%Y %H:%M:%S")

# plot2
png("plot2.png")
plot(data$V1, data$V3, type = 'l', xlab = '', ylab = 'Global Active Power(kilowatts)')
dev.off()