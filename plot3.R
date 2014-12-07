source("openFile.R")

makePlot3 <- function(data = NULL, ext = F){
  if(is.null(data))
    data <- openFile()
  
  if (ext == F){png("plot2.png", width=400, height=400)}
  plot(data$Time,data$Sub_metering_1, type = "l",col = "black", 
       xlab = "", ylab = "Energy sub metering" )
  lines(data$Time, data$Sub_metering_2, col = "red")
  lines(data$Time, data$Sub_metering_3, col = "blue")
  legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
          col=c("black","red","blue"), lty = 1)
  if (ext == F){dev.off()}
}

#makePlot3()