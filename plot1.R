data <- read.table("household_power_consumption.txt",sep = ";",skip = 66637, nrow = 2880)

data$V1 <- strptime(paste(data$V1, data$V2, sep = " ", collapse = NULL), "%d/%m/%Y %H:%M:%S")

# plot1
png("plot1.png")
hist(data$V3, col = 'red', main = 'Global Active Power', xlab = 'Global Active Power(kilowatts)')
dev.off()