library(dplyr)
library(lubridate)

## Reading the data
data <- read.table("household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)

##Creating the histogram and saving used for Plot 1
hist(df$Global_active_power, main = paste("Global Active Power"), col="red", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
cat("Plot1.png has been saved in", getwd())