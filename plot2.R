my_data_File <- "household_power_consumption.txt"
my_data <- read.table(my_data_File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- my_data[my_data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subsetData$Date, subsetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=450, height=450)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()