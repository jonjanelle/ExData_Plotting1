source("openFile.R")
makePlot1 <- function(data = NULL){
  if(is.null(data))
    data <- openFile()

  png("plot1.png", width=400, height=400)
  hist(data[,3], col = "red", main = "Global Active Power",
       xlab = "Global Active Power (kilowatts)", xlim = c(0, 6))
  dev.off()
}

#makePlot1()