construct.plot3 <- function(cex = 1) {
  plot(data$Datetime,data$Sub_metering_1,type = "l",xlab = "",ylab = "Energy sub melting")
  lines(data$Datetime,data$Sub_metering_2,type = "l",col = "red")
  lines(data$Datetime,data$Sub_metering_3,type = "l",col = "blue")
  legend("topright",legend = c("Sub_melting_1","Sub_melting_2","Sub_melting_3"),col = c("black","red","blue"),lty = c(1,1,1),cex = cex)
}