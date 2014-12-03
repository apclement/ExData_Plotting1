source('dataloader.R')

plot(data$Sub_metering_1 ~ data$DateTime, type = 'l', ylab = "Energy sub metering", xlab = '')
lines(data$Sub_metering_2 ~ data$DateTime, type = 'l', col = 'red')
lines(data$Sub_metering_3 ~ data$DateTime, type = 'l', col = 'blue')

legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2,
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

writepng()