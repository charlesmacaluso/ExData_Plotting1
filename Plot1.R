# Initialize and clean the data from the raw file
source("data_prep.R")

# Initialize a '.png' file to house our chart
png(filename = "Plot1.png")

# Create the plot with the necessary variables to match the template
with(initial_data_pull, hist(Global_active_power, 
                             col = "red", 
                             main = "Global Active Power", 
                             xlab = "Global Active Power (kilowatts)"))

# Close the connection to the '.png' file
dev.off()