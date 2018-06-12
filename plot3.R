#
# plot3.R
# Plot energy use for each sub metered zone over time
#

makePlot3 <- function(pwr, outfile) {
  # Create Plot 3
  # Draw a simple line chart of power consumption in
  # each of the three sub metered zones over Time
  # for the two day period
  #
  # Args:
  #  pwr     : power usage data set to plot
  #  outfile : file to save the png as
  
  png(filename = outfile, width = 480, height=480)
  
  # build the empty base plot from submetering 1.  It's first,
  # and it's biggest,  but really should plot max(submetering 1/2/3)
  # to scale things right
  plot(pwr$Timestamp, pwr$Submetering1, type="n", xlab="",
       ylab="Energy sub metering")
  points(pwr$Timestamp, pwr$Submetering1, type="l", col="black")
  points(pwr$Timestamp, pwr$Submetering2, type="l", col="red")
  points(pwr$Timestamp, pwr$Submetering3, type="l", col="blue")
  legend("topright", col=c("black", "red", "blue"), lty=c(1,1,1),
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  dev.off()
}

source("getData.R")
data <- courseData()
if (! file.exists("./img")) { dir.create("./img") }
makePlot3(data$get(), "./img/plot3.png")
