## Generating Plot 1 

## define name of file to save plot to
png("plot1.png")  


## setup to only have 1 plot on the output
par(mfrow = c(1,1))

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

    
## plot 1 - histogram
hist(hpowerdata$Global_active_power, col = "Red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

## close the PNG device
dev.off()