#########################################################
# Fit linear regression model to the advertising data   #
#########################################################

# read in the data
adsData<- read.csv("Advertising2.csv")

# processing (remove outlier)
outlierIndex <- which(adsData$TV < 0)
adsData <- adsData[-outlierIndex,]

# fit linear model to the data
lmFit <- lm(Sales~TV, data=adsData)

# print coefficients
lmFitCoef <- coef(lmFit)
lmFitCoef

# plot linear fit
library(ggplot2)
ggplot(adsData, aes(x=TV, y=Sales)) + geom_point(col="darkorange") + 
      geom_abline(intercept = lmFitCoef[1], slope = lmFitCoef[2], col="blue") +
      ylab("Sales (per thousand units)") + xlab("TV budget (per thousand dollars)")
