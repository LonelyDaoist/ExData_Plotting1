source("plot2.R")
source("plot3.R")

construct.plot4 <- function() {
  par(mfrow = c(2,2))
  construct.plot2()
  plot(data$Datetime,data$Voltage,type = "l",xlab = "Datetime",ylab = "Voltage")
  construct.plot3(cex = 0.5)
  plot(data$Datetime,data$Global_reactive_power,type = "l",xlab = "Datetime")
}