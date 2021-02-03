COMPUTER EXERCISES (PAGE 63)

#(C1)(i)Find the average participation rate and the average match rate in the sample 
# of plans

ls()
library(haven)
dataset_1 <- read_dta("~/401K.DTA")
View(dataset_1)

attach(dataset_1)

mean(prate)
#87.36291
mean(mrate)
#0.7315124

# The average participation rate is 87.36% and the average match rate is 73.15 cents per
#dollar.


#(ii) Estimate the simple regression equation:

reg_dataset_1<-lm(prate~mrate, data=dataset_1)
summary(reg_dataset_1)

# The estimated model is: prate = 83.0755 + 5.8611 mrate



#(iii) Interpret the intercept in your equation. Interpret the coefficient on mrate.

# Intercept interpretation: the average participacion rate when match rates are equal zero
#is 83.0755%.

# Coefficient interpretation: an increase in the match rate in 1 cent leads to an average
#rise in the participation rates of 0.0586 (= 5.86 p.p.


#(iv)Find the predicted prate when mrate 5 3.5. Is this a reasonable prediction?
# Explain what is happening here.

83.0755+5.8611*3.5
#103.5894
# prate would be equal to 103.59%, which is not realistic. When dependent variables are
#bounded, a simple regression model can give strange predictions for extreme values 
#of the independent variable.


#(v) How much of the variation in prate is explained by mrate? Is this a lot?

summary(reg_dataset_1)
#Multiple R-squared:  0.0747,	Adjusted R-squared:  0.0741 

# 7.47% of the variation in prate is explained by mrate. This is not much, which means
#there must be another factors explaining this variation.

#-------------------------------------------------------------------------------------------
###(C2)

#(i)Find the average salary and the average tenure in the sample.

dataset_2 <- read_dta("~/CEOSAL2.DTA")
View(dataset_2)

detach(dataset_1)
attach(dataset_2)

mean(salary)
#865.8644
mean(ceoten)
#7.954802


#(ii) How many CEOs are in their first year as CEO (that is, ceoten=0)?
# What is the longest tenure as a CEO?

nrow(as.matrix(subset(ceoten,ceoten==0)))
#5 CEOs are in their first year as CEO.

max(ceoten)
#37 is the longest tenure as CEO.


#(iii) Estimate the simple regression model

reg_dataset_2<-lm(lsalary~ceoten,data=dataset_2)
summary(reg_dataset_2)

# The estimated model is log(salary)=6.505498+0.009724 ceoten
# An increase in one more year of CEO tenure leads to an average raise of the salary
#in 0.9724%.


#-------------------------------------------------------------------------------------------
###(C3)
#(i) Report your results in equation form along with the number of observations and R2.
# What does the intercept in this equation mean?

dataset_3 <- read_dta("~/SLEEP75.DTA")
View(dataset_3)
detach(dataset_2)
attach(dataset_3)

reg_dataset_3<-lm(sleep~totwrk, dataset=dataset_3)
summary(reg_dataset_3)
# sleep = 3586.37695 - 0.15075 totwrk
# n=706, R^2=0.1033
# The intercept shows the estimated average sleep time in minutes for someone who does not
#work, which is equal to 3586 minutes.


#(ii) If totwrk increases by 2 hours, by how much is sleep estimated to fall? Do you find
# this to be a large effect?

-0.15075*2*60
# If the worked time increses in two hours a week, the estimated average sleep time will
#fall in 18 minutes across the week. This is only a few minutes per night.

---------------------------------------------------------------------------------------------
### (C4)
#Find the average salary and average IQ in the sample. 
# What is the sample standard deviation of IQ?
  
library(haven)
dataset_4 <- read_dta("~/WAGE2.DTA")
View(dataset_4)
detach(dataset_3)
attach(dataset_4)

mean(wage)
#957.9455
mean(IQ)
#101.2824
sd(IQ)
#15.05264


#(ii) Estimate a simple regression model where a one-point increase in IQ changes 
# wage by a constant dollar amount. Use this model to find the predicted increase
# in wage for an increase in IQ of 15 points

summary(lm(wage~IQ,data=dataset_4))
# wage= 116.992 + 8.303 IQ
15*8.303
# An increase in in IQ of 15 points increases predicted monthly salary by 124.545 dollars.
# IQ explains 9.55% of the variations in Wage.


#(iii) Now, estimate a model where each one-point increase in IQ has the same percentage 
# effect on wage. If IQ increases by 15 points, what is the approximate percentage 
# increase in predicted wage?

summary(lm(lwage~IQ,data=dataset_4))
# log(wage)=5.887 + 0.0088 IQ.
15*0.0088*100
# An increase in IQ by 15 points increases the predicted wage in 13.2%.

---------------------------------------------------------------------------------------------
###(C5)
#(i) Write down a model (not an estimated equation) that implies a constant 
# elasticity between rd and sales. Which parameter is the elasticity?  

# rd = B0 + B1 sales + u.
#The parameter B1 refers to the rd-sales elasticity.


#(ii) Write out the estimated equation in the usual form. What is the estimated 
# elasticity of rd with respect to sales? Explain in words what this elasticity means.
library(haven)
dataset_5 <- read_dta("~/RDCHEM.DTA")
View(dataset_5)
detach(dataset_4)
attach(dataset_5)

summary(lm(lrd~lsales,data=dataset_5))
# rd= -4.10472 + 1.07573 sales

#  The estimated rd-sales elasticity is 1.08%. An increase in sales by 1% increases the
# predicted rd spending by 1.08%.

#  This elasticity refers to the sensitiviness of the rd spending to a variation in the
# sales

---------------------------------------------------------------------------------------------
###(C6)
# (i) Do you think each additional dollar spent has the same effect on the pass rate,
# or does a diminishing effect seem more appropriate? Explain

#  The spending per student has a diminishing effect on pass rate. At high level of spending
# we would expect very little effect.
  

#(iii) Use the data in MEAP93.RAW to estimate the model from part (ii).
# Report the estimated equation in the usual way, including the sample size and R-squared.

library(haven)
dataset_6 <- read_dta("~/MEAP93.DTA")
View(dataset_6)
detach(dataset_5)
attach(dataset_6)

summary(lm(math10~lexpend,data=dataset_6))

# math10 = -69.341 + 11.164 log(expend)
# n=408, R2 = 2.966%


#(iv)How big is the estimated spending effect? Namely, if spending increases by 10%, 
# what is the estimated percentage point increase in math10?

11.164*10/100

# 1.1164 is the estimated point increase in math10 given an spending raise by 10%.


#(v) One might worry that regression analysis can produce fitted values for math10 that 
# are greater than 100. Why is this not much of a worry in this data set?

max(math10)
# In this dataset 66.7 is the greatest value for math10.


---------------------------------------------------------------------------------------------
###(C7)
