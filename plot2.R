# Load data
source('Load_power_data.R')

# Open png device
png(filename='plot2.png')

# Make plot
plot(power_data$date.time, power_data$Global_active_power, ylab='Global Active Power (kilowatts)', xlab='', type='l')

# Turn off device
dev.off()