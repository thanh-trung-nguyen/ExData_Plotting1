## To run this code, you must go to the directory containing 
## both the code and the unzipped data file. 

## Before running the plotting functions, you must call the script "load_data.R" to load the data into R
# and extract the correct data for the specified dates. It also converts the columns to correct data types. 
## this script is called as follows: 

source("load_data.R") # load the data into R. The function "load_data.R" is included in the repo. 

# plot 1: 
par(mfcol = c(1,1))
with(data2, hist(Global_active_power,col= "red",main="Global Active Power", xlab = "Global Active Power (kilowatts)"))

dev.copy(png,filename = "plot1.png", width = 480, height = 480)
dev.off()

