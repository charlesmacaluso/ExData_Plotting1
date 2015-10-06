# Initialize and clean the data from the raw file
source("data_prep.R")

# Initialize a '.png' file to house our chart
png(filename = "Plot3.png")

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
       lty = c(1, 1, 1), col = c("black", "red", "blue"))

# Close the connection to the '.png' file
dev.off()