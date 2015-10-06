# Pull in the initial tranche of data (only the subset between Feb 1 and
# Feb 2 of 2007)
initial_data_pull <- read.table("household_power_consumption.txt", 
                                sep = ";", skip = 66637, nrows = 2880)

# Pull in the column headers into a data frame
column_headers <- read.table("household_power_consumption.txt", sep = ";",
                             nrows = 1)

# Convert that data frame into a vector of character values
column_header_vector <- as.character(unlist(column_headers[1,]))

# Apply that new vector as the column names of the data pull
colnames(initial_data_pull) <- column_header_vector

# Convert separate dates and times into a combined date-time column
time_date_pull <- paste(initial_data_pull$Date, initial_data_pull$Time)
initial_data_pull$DateTime <- strptime(time_date_pull, "%d/%m/%Y %H:%M:%S")