#Let us delete all variables
rm(list = ls());
#Set the working directory
setwd("/Users/rdoraiswamy/Coursera/R_Files/data");

#Get the code to build the data
source("../elec_power_graphs.R");

#Reset the plot area
plot.new();
#generate the plot as Sub Metering 1 plot per the assignment requirements
with(dt1, plot(Time, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = ""))

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
       
#Now use the PNG graphic device to store the png file of 480 x 480
dev.print(png, file = "plot3.png", width = 480, height = 480);

#Let us close the plot
dev.off();