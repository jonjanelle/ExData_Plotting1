source("openFile.R")

makePlot2 <- function(data = NULL, ext = F){
  if(is.null(data))
    data <- openFile()
  if (ext == F){png("plot2.png", width=400, height=400)}
  plot(data$Time,data$Global_active_power, type = "l",col = "black", 
        xlab = "datetime", ylab = "Global Active Power")
  if (ext == F){dev.off()}
}

#makePlot2()
