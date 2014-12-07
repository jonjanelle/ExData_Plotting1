date_time <- function(date, time) {
  return (strptime(paste(date, time), "%d/%m/%Y %H:%M:%S"))
}

openFile <- function() {
  #Open file
  powerData <- read.table("household_power_consumption.txt",header=TRUE, sep=";",
                   colClasses=c("character", "character", rep("numeric",7)), na="?")
  
  # convert date and time variables to Date/Time class
  powerData$Time <- strptime(paste(powerData$Date, powerData$Time), "%d/%m/%Y %H:%M:%S")
  powerData$Date <- as.Date(powerData$Date, "%d/%m/%Y")
  # only use data from the dates 2007-02-01 and 2007-02-02
  dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  powerData <- subset(powerData, Date %in% dates)
  return(powerData)
}