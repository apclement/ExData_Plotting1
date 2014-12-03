library('stringr')

fn <- "household_power_consumption"
zip <- paste(fn, '.zip', sep = '')
txt <- paste(fn, '.txt', sep = '')

if (!file.exists(zip)) {
  download.file(url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
                destfile = zip, method = "curl")
}

if (!file.exists(txt)) {
  unzip(zip)  
}

raw <- grep("^[1,2]/2/2007", readLines(txt), value = TRUE)

colnames <- strsplit(readLines(txt, n = 1), ';')[[1]]
data <- read.table(text = raw, header = T, sep = ';', na.strings = '?',
                   col.names = colnames, stringsAsFactors = F)

data$DateTime <- as.POSIXct(strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S"))


writepng <- function(){
  n <- str_match(sys.frame(1)$ofile, "plot(\\d)")[1, 2]
  dev.copy(png, paste("plot", n, ".png", sep = ''), width = 480, height = 480, units = "px")
  dev.off()
}