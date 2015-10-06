# Initialize and clean the data from the raw file
source("data_prep.R")

# Initialize a '.png' file to house our chart
png(filename = "Plot2.png")

# Create the plot with the necessary variables to match the template
with(initial_data_pull, plot(DateTime, Global_active_power, 
                             type = "l", xlab = "", 
                             ylab = "Global Active Power (kilowatts)"))

# Close the connection to the '.png' file
dev.off()