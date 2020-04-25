construct.plot1 <- function() {
  hist(data$Global_active_power,col="red",las=1,ylim = c(0,1200), main = "Global Active Power", xlab = "Global Active Power (killowatts)")
}