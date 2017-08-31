# Simple R code for spatial point process analysis, using spatstat package.
#
# Based on "Getting started with spatstat" by Baddeley, Turner and Rubak.
#
# 31.08.2017, Henning Thomsen

# Load packages
library(spatstat)

# Parameters
numPoints <- 100 # Number of points to be simulated

# Generate random collection of points
myData <- matrix( runif(2*numPoints) , nrow = numPoints, ncol = 2)

# Convert data to a PPP object
obsWin <- owin(c(0,1), c(0,1))
myPattern <- ppp(myData[,1],myData[,2], obsWin)

# Plot the data
x11() # Creates a new window
plot(myPattern)

# Plots Ripley's K-function
x11()
plot(Kest(myPattern))