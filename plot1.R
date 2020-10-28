# downloading the data
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, destfile = "data.zip")
unzip("data.zip")
UCIdf <- read.csv("household_power_consumption.txt", header = TRUE, sep=";")
UCIsub <- subset(UCIdf, Date %in% c("1/2/2007","2/2/2007"))
UCIsub$Date <- as.Date(UCIsub$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(UCIsub$Date), UCIsub$Time)
UCIsub$Datetime <- as.POSIXct(datetime)

# plotting fig.1
hist(as.numeric(UCIsub$Global_active_power), freq = TRUE, col ="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")




