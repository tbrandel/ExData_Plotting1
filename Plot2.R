#
# plot2.R
# Build a plot of Global Active Power over time
#

makePlot2 <- function(pwr, outfile) {
  # Create Plot 2
  # Draw a simple line chart, of Global Active Power vs Time
  # over the two day period.
  #
  # Args:
  #  pwr     : power usage data set to plot
  #  outfile : file to save the png as
  
  png(filename = outfile, width = 480, height=480)
  plot(pwr$Timestamp, pwr$GlobalActivePower, type="l",
       xlab="", ylab="Global Active Power (kilowatts)")
  dev.off()
}

source("getData.R")
data <- courseData()
if (! file.exists("./img")) { dir.create("./img") }
makePlot2(data$get(), "./img/plot2.png")