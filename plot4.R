source('dataloader.R')

with(data, {

# 2x2 grid
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))

# plot 1
plot(Global_active_power ~ DateTime, type = 'l', xlab = '', ylab = "Global Active Power")

# plot 2
plot(Voltage ~ DateTime, type = "l", ylab = "Voltage", xlab = "datetime")

# plot 3
plot(Sub_metering_1 ~ DateTime, type = 'l', ylab = "Energy sub metering", xlab = '')
lines(Sub_metering_2 ~ DateTime, type = 'l', col = 'red')
lines(Sub_metering_3 ~ DateTime, type = 'l', col = 'blue')

legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, bty = "n",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = .8)

# plot 4
plot(Global_reactive_power ~ DateTime, type = "l", ylab = "Global_reactive_power", xlab = "datetime")

})

writepng()