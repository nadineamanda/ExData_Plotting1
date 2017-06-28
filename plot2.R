## reading the data
data <- read.table("household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)


## Creating plot 2, Global Active Power by Day
plot(df$timestamp,df$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
cat("plot2.png has been saved in", getwd())