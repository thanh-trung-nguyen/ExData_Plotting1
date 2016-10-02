
# plot 4: 

## To run this code, you must go to the directory containing 
## both the code and the unzipped data file. 

## Before running the plotting functions, you must call the script "load_data.R" to load the data into R
# and extract the correct data for the specified dates. It also converts the columns to correct data types. 

# source("load_data.R")

par(mfcol = c(2,2))
with(data2,plot(Date_Time, Global_active_power, type = "l",xlab = "", ylab = "Global active power (kilowatts)"))
with(data2,plot(Date_Time, Global_active_power, type = "l",xlab = "", ylab = "Global active power (kilowatts)"))

with(data2, plot(Date_Time,Sub_metering_1,type = "n",xlab = " ", ylab = "Energy sub metering"))
points(data2$Date_Time, data2$Sub_metering_1,col = "black",type = "l")
points(data2$Date_Time, data2$Sub_metering_2,col = "red",type = "l")
points(data2$Date_Time, data2$Sub_metering_3,col = "blue",type = "l")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"),lty = 1)

with(data2,plot(Date_Time, Global_reactive_power, type = "l",xlab = "datetime", ylab = "Global_reactive_power"))


dev.copy(png, filename = "plot4.png", width = 640, height = 640) # the size of this plot is made a bit larger in order to 
# accommodate the sizes  of the sub-plots. 

dev.off()



