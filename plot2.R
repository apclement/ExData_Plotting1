source('dataloader.R')

plot(data$Global_active_power ~ data$DateTime, type = 'l', xlab = '', ylab = "Global Active Power (kilowatts)")

# Days are in french
writepng()
