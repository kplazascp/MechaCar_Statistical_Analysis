# MechaCar_Statistical_Analysis

## Overview
In this analysis we are helping Jeremy solve the production troubles that AutosURs' MechaCar newest product is having.

## Linear Regression to Predict MPG
In the following image, we are able to find the results of the linear regression:

![Linear regression](https://github.com/kplazascp/MechaCar_Statistical_Analysis/blob/main/Resources/Linear_regression.PNG)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The variables/coefficients that provided a non-random amount of variance where the Vehicle length and in a less significance but still in the margin, vehicle weight.

- Is the slope of the linear model considered to be zero? Why or why not?
![Significance](https://github.com/kplazascp/MechaCar_Statistical_Analysis/blob/main/Resources/Statistical%20significance.PNG)

The slope of the linear model is not considered zero as the p-value is 5.35e-11

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
Yes, this linear model predicts effectively mpg of MechaCar prototypes because the R-squared is 0.715, meaning the prediction based on vehicle length, vehicle weigth and ground clearance can predict over 71% of mpg performance for prototypes.

##  Summary Statistics on Suspension Coils
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![Coils1](https://github.com/kplazascp/MechaCar_Statistical_Analysis/blob/main/Resources/Suspension_coils1.PNG)

The variance of the suspension coils was of 62.29 pounds per square inch, wich does not exceed the 100 pounds per square inch, meeting the design criteria.

![Coils2](https://github.com/kplazascp/MechaCar_Statistical_Analysis/blob/main/Resources/Lot.PNG)

The variance of Lot 1 and Lot 2 also meet the criteria (0.97 and 7.46 pounds per square inch), but fot Lot 3 we can evidence that the variance is 170 pounds per square inch, which does not meet the criteria.

## T-Tests on Suspension Coils

![Ttest](https://github.com/kplazascp/MechaCar_Statistical_Analysis/blob/main/Resources/one%20sample%20t-test.PNG)

All lots present a mean per square inch of 1498.78 pounds.

Following, we will find the analysis for every lot:

![Ttest1](https://github.com/kplazascp/MechaCar_Statistical_Analysis/blob/main/Resources/t-test%20lot1.PNG)

The p-value for Lot 1 is 1, with a mean per square inch of 1500 pounds

![Ttest2](https://github.com/kplazascp/MechaCar_Statistical_Analysis/blob/main/Resources/t-test%20lot2.PNG)

The p-value fo Lot 2 is 0.60, with a mean per square inch of 1500.2 pounds

![Ttest3](https://github.com/kplazascp/MechaCar_Statistical_Analysis/blob/main/Resources/t-test%20lot3.PNG)

The p-value for Lot 3is 0.04, with a mean per square inch of 1496.14 pounds

All of this evidences that Lot 1 and Lot 2 have not statistically significant diferrences when compared to the total population, but Lot 3 is significantly different in its p-value, so it is essential to review Lot 3 and adjust it.

## Study Design: MechaCar vs Competition
- What metric or metrics are you going to test?
To be able to compare vs the competition we have to have the price, the costs, the mpg on city and on highway and the equipment.
- What is the null hypothesis or alternative hypothesis?
MechaCar performance is the same as the competition
- What statistical test would you use to test the hypothesis? And why?
Multiple linear regression and variance analysis so that we can identify if they are or not statistically significant
- What data is needed to run the statistical test?
We will need to count with the competitors data, with representative samples, so that we can compare them to the MechaCar and run the statistical test
