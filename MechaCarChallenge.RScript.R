# import TidyVerse
library(tidyverse)

# Load the data file
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Summarize the linear model results
summary(lm(MechaCar$mpg ~ MechaCar$`vehicle length` + MechaCar$`vehicle weight` + MechaCar$`spoiler angle` + MechaCar$`ground clearance` + MechaCar$AWD,data=MechaCar)) #generate summary statistics

