#plotting fig.3
with(UCIsub, {
  plot(Sub_metering_1~Datetime, type = "l",xlab = " ", ylab = "Global Active Power (kilowatts)") 
  lines(Sub_metering_2~Datetime, col='red')
  lines(Sub_metering_3~Datetime, col= "blue")
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
