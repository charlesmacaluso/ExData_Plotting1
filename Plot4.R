# Initialize and clean the data from the raw file
source("data_prep.R")

# Initialize a '.png' file to house our chart
png(filename = "Plot4.png")

# Set the parameters to allow for 2 rows by 2 columns of charts
par(mfrow = c(2,2))

# --------------------------------------------------------
# PLOT 4a - Top left corner

# Create the plot with the necessary variables to match the template
with(initial_data_pull, plot(DateTime, Global_active_power, 
                             type = "l", xlab = "", 
                             ylab = "Global Active Power"))

# --------------------------------------------------------
# PLOT 4b - Top right corner

# Create the plot with the necessary variables to match the template
with(initial_data_pull, plot(DateTime, Voltage, 
                             type = "l", xlab = "datetime"))

# --------------------------------------------------------
# PLOT 4c - Bottom left corner

# Create the plot with the necessary variables to match the template
with(initial_data_pull, plot(DateTime, Sub_metering_1, type = "n", 
                             xlab = "", ylab = "Energy sub metering"))
with(initial_data_pull, points(DateTime, Sub_metering_1, 
                               col = "black", type = "l"))
with(initial_data_pull, points(DateTime, Sub_metering_2, 
                               col = "red", type = "l"))
with(initial_data_pull, points(DateTime, Sub_metering_3, 
                               col = "blue", type = "l"))

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", 
                              "Sub_metering_3"), 
       lty = c(1, 1, 1), col = c("black", "red", "blue"), bty = "n")

# --------------------------------------------------------
# PLOT 4d - Bottom right corner

# Create the plot with the necessary variables to match the template
with(initial_data_pull, plot(DateTime, Global_reactive_power, 
                             type = "l", xlab = "datetime"))

# Close the connection to the '.png' file
dev.off()