## load the data into R and convert data to the correct types: 


library(data.table) ## use data.table for fast reading
library(dplyr)
library(lubridate)


data <- fread("household_power_consumption.txt")
data <-tbl_df(data) # for using with dplyr package

date1 <- ymd_hms("2007-02-01 00:00:00")
date2 <- ymd_hms("2007-02-02 23:59:59")

data <- mutate(data, Date_Time = paste(Date, Time)) # combine date and time into the variable Date_Time
data$Date_Time <- dmy_hms(data$Date_Time) # convert date and time to the Date class

data2 <- filter(data, Date_Time >=date1, Date_Time <= date2) ## choose only data between the specified dates.


data2$Global_active_power <- as.numeric(data2$Global_active_power)
data2$Voltage <- as.numeric(data2$Voltage)
data2$Global_reactive_power <- data2$Global_reactive_power

data2$Sub_metering_1 = as.numeric(data2$Sub_metering_1)
data2$Sub_metering_2 = as.numeric(data2$Sub_metering_2)
data2$Sub_metering_3 = as.numeric(data2$Sub_metering_3)

