#Deliverable 1 - Linear Regression to Predict MPG

#Technical Analysis

#Use the library() function to load the dplyr package
library(dplyr)
library(tidyr)

#Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_df)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_df))

#Deliverable 2 - Create Visualizations for the Trip Analysis

#Technical Analysis

#In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table
Suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary<- Suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- Suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

#Deliverable 3 - T-Tests on Suspension Coils

#Technical Analysis

#write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(Suspension_coil$PSI,mu=1500)

#write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
# T-test for Lot1 
t.test(subset(Suspension_coil, Manufacturing_Lot == "Lot1")$PSI, mu= 1500)
# T-test for Lot2 
t.test(subset(Suspension_coil, Manufacturing_Lot == "Lot2")$PSI, mu= 1500)
# T-test for Lot3 
t.test(subset(Suspension_coil, Manufacturing_Lot == "Lot3")$PSI, mu= 1500)

