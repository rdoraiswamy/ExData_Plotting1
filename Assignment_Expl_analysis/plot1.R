#Let us delete all variables
rm(list = ls());
#Set the working directory
setwd("/Users/rdoraiswamy/Coursera/R_Files/data");

#Get the code to build the data
source("../elec_power_graphs.R");

#Reset the plot area
plot.new();
#generate the histogram as per the assignment requirements
hist(dt1$Global_active_power
     , main = "Global Active Power"
     , col = "red"
     , xlab = "Global Active Power (kilowatts)"
     , ylab = "Frequency"
     );
#Now use the PNG graphic device to store the png file of 480 x 480
dev.print(png, file = "plot1.png", width = 480, height = 480);

#Let us close the plot
dev.off();