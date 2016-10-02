# plot 2: 

## To run this code, you must go to the directory containing 
## both the code and the unzipped data file. 

## Before running the plotting functions, you must call the script "load_data.R" to load the data into R
# and extract the correct data for the specified dates. It also converts the columns to correct data types. 


# source("load_data.R") 

par(mfcol = c(1,1))

with(data2,plot(Date_Time, Global_active_power, type = "l",xlab = "", ylab = "Global active power (kilowatts)"))

dev.copy(png,filename = "plot2.png", width = 480, height = 480)
dev.off()


