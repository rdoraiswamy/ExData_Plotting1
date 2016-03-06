#Let us delete all variables
rm(list = ls());
#Set the working directory
setwd("/Users/rdoraiswamy/Coursera/R_Files/data");

#Get the code to build the data
source("../elec_power_graphs.R");

#Reset the plot area
plot.reset();

#set a 2 X 2 pot grid
par(mfrow = c(2,2));

#1.0 Generate the first plot - Global Active Power
plot(dt1$Time, dt1$Global_active_power, type = "l", ylab = "Global Active Power"
               , xlab = "");

#2.0 Print the voltage plot
plot(dt1$Time, dt1$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

#3.0 generate the plot as Sub Metering 1 plot per the assignment requirements
plot(dt1$Time, dt1$Sub_metering_1, type = "l", ylab = "Energy sub metering"
    , xlab = "");
#Plot Sub Metering 2 plot per the assignment requirements
lines(dt1$Time, dt1$Sub_metering_2, col = "red");
#Plot Sub Metering 3 plot per the assignment requirements
lines(dt1$Time, dt1$Sub_metering_3, col = "blue");

#Add the legend with matching colors
legend("topright"
       , col=c("black","red","blue")
       , c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  ")
       , lty = c(1,1,1), lwd = c(1,1,1)
);


#4.0 Generate the Global Reactive Power plot
plot(dt1$Time, dt1$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power")


#Now use the PNG graphic device to store the png file of 480 x 480
dev.print(png, file = "plot4.png", width = 480, height = 480);

#Let us close the plot
dev.off();