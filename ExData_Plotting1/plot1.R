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

png(filename = "plot1.png", width = 480, height = 480)
h1$Global_active_power <- as.numeric(h1$Global_active_power)
hist(h1$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power")
dev.off()
