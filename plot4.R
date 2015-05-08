# Load data
source('Load_power_data.R')

# Open device
png(filename='plot4.png')

## Make plots
par(mfrow=c(2,2))

# Top left
plot(power_data$date.time, power_data$Global_active_power,ylab='Global Active Power', xlab='', type='l')

# Top right
plot(power_data$date.time, power_data$Voltage,xlab='datetime', ylab='Voltage', type='l')

# Bottom left
plot(power_data$date.time, power_data$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')
lines(power_data$date.time, power_data$Sub_metering_2, col='red')
lines(power_data$date.time, power_data$Sub_metering_3, col='blue')
legend('topright',legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), lty='solid', bty='n')

# Bottom right
plot(power_data$date.time, power_data$Global_reactive_power, xlab='datetime', ylab='Global_reactive_power', type='l')

# Turn off device
dev.off()