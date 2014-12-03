source('dataloader.R')

hist(data$Global_active_power, col = 'red', main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

writepng()