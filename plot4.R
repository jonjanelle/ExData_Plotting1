source("openFile.R")
source("plot2.R")
source("plot3.R")

makePlot4 <- function(data = NULL){
  if(is.null(data))
    data <- openFile()

  png("plot4.png", width=600, height=600)
  #windows()
  par(mfrow = c(2,2))
  makePlot2(data, ext = T)
  plot(data$Time,data$Voltage, type = "l",col = "black", 
        xlab = "datetime" , ylab ="Voltage")
  makePlot3(data, ext = T)
  plot(data$Time,data$Global_reactive_power, type = "l",col = "black", 
        xlab = "datetime" , ylab ="Global_reactive_power")
  dev.off()
}

#makePlot4()
