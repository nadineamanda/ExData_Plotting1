## Reading the data
data <- read.table("household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)

##Creating and Saving Plot 4: 4 panels

par(mfrow=c(2,2))
#Panel A
plot(df$timestamp,df$Global_active_power, type="l", xlab="", ylab="Global Active Power")
##Panel B
plot(df$timestamp,df$Voltage, type="l", xlab="datetime", ylab="Voltage")
##Panel C
plot(df$timestamp,df$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(df$timestamp,df$Sub_metering_2,col="red")
lines(df$timestamp,df$Sub_metering_3,col="blue")
legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), bty="n", cex=.5) #bty removes the box, cex shrinks the text, spacing added after labels so it renders correctly
#Panel D
plot(df$timestamp,df$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()
cat("plot4.png has been saved in", getwd())