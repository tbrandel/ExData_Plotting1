#
# plot1.R
# Build a histogram of Global Active Power
#

makePlot1 <- function(pwr, outfile) {
  # Create Plot 1
  # Create a historgram of global active power.
  # Use default bins for historgram (bucket 4 kind of ends at 2).
  # Even though 480x480 is the default, specify to be sure.
  #
  # Args:
  #  pwr     : power usage data set to plot
  #  outfile : path to png file to produce
  # 
  png(filename = outfile, width = 480, height=480)
  hist(pwr$GlobalActivePower, col="red", main="Global Active Power",
       xlab="Global Active Power (kilowatts)")
  dev.off()
}

source("getData.R")
data <- courseData()
if (! file.exists("./img")) { dir.create("./img") }
makePlot1(data$get(), "./img/plot1.png")

