# import TidyVerse
library(tidyverse)

# MPG Regression

# Load the data file
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Summarize the linear model results
summary(lm(MechaCar$mpg ~ MechaCar$`vehicle length` + MechaCar$`vehicle weight` + MechaCar$`spoiler angle` + MechaCar$`ground clearance` + MechaCar$AWD,data=MechaCar)) #generate summary statistics

# Linear model with vehicle length
model <- lm(MechaCar$`vehicle length` ~ MechaCar$mpg,MechaCar) #create linear model

yvals <- model$coefficients["MechaCar$mpg"]*MechaCar$mpg + model$coefficients['(Intercept)'] #determine y-axis values

plt20 <- ggplot(MechaCar,aes(x=mpg,y=`vehicle length`)) #import dataset into ggplot

plt20 + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model


# Linear model with ground clearance
model <- lm(MechaCar$`ground clearance` ~ MechaCar$mpg,MechaCar) #create linear model

yvals <- model$coefficients["MechaCar$mpg"]*MechaCar$mpg + model$coefficients['(Intercept)'] #determine y-axis values

plt20 <- ggplot(MechaCar,aes(x=mpg,y=`ground clearance`)) #import dataset into ggplot

plt20 + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model


# Suspension Coil Summary
Suspension <- read.csv(file = 'Suspension_Coil.csv')

#filter the lots
Lot1 <- Suspension %>% filter(Suspension$Manufacturing_Lot == "Lot1")
Lot2 <- Suspension %>% filter(Suspension$Manufacturing_Lot == "Lot2")
Lot3 <- Suspension %>% filter(Suspension$Manufacturing_Lot == "Lot3")

summary(Lot1$PSI) # Mean and Median
STDD = sd(Lot1$PSI) # standard deviation
print(STDD)
Var = var(Lot1$PSI) # variance
print(Var)

summary(Lot2$PSI) # Mean and Median
STDD = sd(Lot2$PSI) # standard deviation
print(STDD)
Var = var(Lot2$PSI) # variance
print(Var)

summary(Lot3$PSI) # Mean and Median
STDD = sd(Lot3$PSI) # standard deviation
print(STDD)
Var = var(Lot3$PSI) # variance
print(Var)


##Suspension Coil T-Test
suspension_sample_1 <- Suspension %>% sample_n(50) #generate random sample of 50 data points
suspension_sample_2 <- Suspension %>% sample_n(50) #generate another sampled of 50 data points

TSummary = t.test(log10(suspension_sample_1$PSI),log10(suspension_sample_2$PSI)) #compare the means of two samples

print(t.test(Suspension$PSI, mu=1500)) # Print the T test



