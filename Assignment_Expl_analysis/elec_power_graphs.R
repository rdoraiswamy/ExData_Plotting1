#Let us delete all variables
rm(list = ls());
#Set the working directory
setwd("/Users/rdoraiswamy/Coursera/R_Files/data");

#Get the Header into the Final selected File
system("head -1 household_power_consumption.txt > selected.txt");

#Select Feb 1-2, 2007 with grep and add it to the Final selected file
system("grep -E \"^1/2/2007|^2/2/2007\" household_power_consumption.txt >> selected.txt");

#Read test data
dt1 <- read.table("selected.txt", header = TRUE, sep = ";");
#str(dt1);

# Create a new Date Format variable by combining the Date and Time
dt1$Dt <- as.Date(paste(dt1$Date, dt1$Time), 
                  "%d/%m/%Y %H:%M:%S");
#str(dt1);
table(dt1$Dt);
