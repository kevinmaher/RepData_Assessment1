## Generating Plot 4

## define name of file to save plot to
png("plot4.png")  


## read full data file
hpower <- read.csv("household_power_consumption.txt", header = T, sep = ';', 
                   na.strings = "?", nrows = 2075259, check.names = F, 
                   stringsAsFactors = F, comment.char = "", quote = '\"')

## format the date field to d,m,y
hpower$Date <- as.Date(hpower$Date, format = "%d/%m/%Y")

## Subsetting the data to only include date range required
hpowerdata <- subset(hpower, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(hpower)

## Converting dates
datetime <- paste(as.Date(hpowerdata$Date), hpowerdata$Time)
hpowerdata$Datetime <- as.POSIXct(datetime)


## plot 4 
## multpile plots
par(mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))
## plot 3 - three lines 
with(hpowerdata, {
  plot(Global_active_power ~ Datetime, type = "l", ylab = "Global Active Power", xlab = "")
  
  plot(Voltage ~ Datetime, type = "l", ylab = "Voltage", xlab = "datetime")
  
  
  
  plot(Sub_metering_1 ~ Datetime, col = "Black", type = "l", ylab = "Energy Sub Metering", xlab = "")
  lines(Sub_metering_2 ~ Datetime, col = 'Red')
  lines(Sub_metering_3 ~ Datetime, col = 'Blue')
  legend("topright", col = c("black", "red", "blue"), lty = c(1,1,1), lwd = c(2,2,2), bty = "n", cex= 0.7,
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  plot(Global_reactive_power ~ Datetime, type = "l", ylab = "Global_reactive_power", xlab = "datetime")
  
})

## close the PNG device
dev.off()
