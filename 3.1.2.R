# Question 3.1.2
library(curl)
schiphol_data <- curl("https://bit.ly/3GLVQ86")
schiphol <- read.csv(schiphol_data)

plot(
  x = schiphol$DATE,
  y = schipol$TMAX,
  xlab = "Time",
  ylab = "Temperature"
)
