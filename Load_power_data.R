library(lubridate)

# Load data
	power_data <- read.table('household_power_consumption.txt', header=TRUE,sep=';', na.strings='?',colClasses=c(rep('character', 2),rep('numeric', 7)))

# Convert dates and times
    power_data$Date <- dmy(power_data$Date)
    power_data$Time <- hms(power_data$Time)
	
# Filter the data frame by date '2007-02-01' to '2007-02-02'
    power_data<- subset(power_data, year(Date) == 2007 & month(Date) == 2 & (day(Date) == 1 | day(Date) == 2))	
 
# Combine date and time
    power_data$date.time <- power_data$Date + power_data$Time	
