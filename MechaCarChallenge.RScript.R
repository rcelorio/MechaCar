# import TidyVerse
library(tidyverse)

# MPG Regression

# Load the data file
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Summarize the linear model results
summary(lm(MechaCar$mpg ~ MechaCar$`vehicle length` + MechaCar$`vehicle weight` + MechaCar$`spoiler angle` + MechaCar$`ground clearance` + MechaCar$AWD,data=MechaCar)) #generate summary statistics

# Linear model with vehicle weight
model <- lm(MechaCar$`vehicle weight` ~ MechaCar$mpg,MechaCar) #create linear model

yvals <- model$coefficients["MechaCar$mpg"]*MechaCar$mpg + model$coefficients['(Intercept)'] #determine y-axis values

plt20 <- ggplot(MechaCar,aes(x=mpg,y=`vehicle weight`)) #import dataset into ggplot

plt20 + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model


# Suspension Coil Summary


