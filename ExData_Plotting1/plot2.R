## Course: Exploratory Data Analysis
## Author: Kapil Marwah
## Date:   19-Apr-2019


#Unzip the downloaded dataset
unzip(zipfile = "./ExploratoryDataAnalysis/exdata_data_household_power_consumption.zip", exdir = "./ExploratoryDataAnalysis")

setwd("./ExploratoryDataAnalysis")

#Read the unzipped data & assign variable names
household <- read.table("./household_power_consumption.txt", header = TRUE, sep = ";",
                        stringsAsFactors = FALSE, dec = ".") 
h1 <- household[household$Date %in% c("1/2/2007", "2/2/2007"),]

datetime <- strptime(paste(h1$Date, h1$Time, sep=" "), 
                     "%d/%m/%Y %H:%M:%S") 

png(filename = "plot2.png", width = 480, height = 480)
h1$Global_active_power <- as.numeric(h1$Global_active_power)
plot(datetime, h1$Global_active_power, type="l", xlab = "", 
     ylab = "Global Active Power (kilowatts)")
dev.off()
