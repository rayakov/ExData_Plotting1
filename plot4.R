#plotting fig.4
par(mfrow=c(2,2))
plot(y = UCIsub$Global_active_power, x = UCIsub$Datetime, type = "l", xlab = " ", ylab = "Global Active Power (kilowatts)")
plot(y = UCIsub$Voltage, x = UCIsub$Datetime, type = "l", xlab = " ", ylab = "voltage")  
with(UCIsub, {
  plot(Sub_metering_1~Datetime, type = "l",xlab = " ", ylab = "Global Active Power (kilowatts)") 
  lines(Sub_metering_2~Datetime, col='red')
  lines(Sub_metering_3~Datetime, col= "blue")
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(y = UCIsub$Global_reactive_power, x = UCIsub$Datetime, type = "l", xlab = " ", ylab = "Global_reactive_power")  
