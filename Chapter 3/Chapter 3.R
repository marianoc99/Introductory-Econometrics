COMPUTER EXERCISES (PAGE 110)

#(C1)(i) What is the most likely sign for b2?
# Positive. The higher the family income, the child's birth weight.


#(ii) Do you think cigs and faminc are likely to be correlated?
#Explain why the correlation might be positive or negative.

#  On the one hand a higher consumption of a good is generally correlated with a higher
# income. On the other hand higher income is correlated with more family education, and
# cigarette use tends to be higher for uneducated families.


#(iii) Now, estimate the equation with and without faminc. Report the results in 
# equation form, including the sample size and R-squared.

library(haven)
dataset_1 <- read_dta("C:/Users/carmo/OneDrive/Escritorio/S/Stata data sets/BWGHT.DTA")
View(dataset_1)
attach(dataset_1)

# Model without family income
summary(lm(bwght~cigs,data = dataset_1))
# bwght = 119.772 - 0.514 cigs
# n= 1388, R2=2.27%

# Model with family income
summary(lm(bwght~cigs+faminc,data=dataset_1))
# bwght = 116.974 -0.463 cigs + 0.093 faminc 
# n=1388, R2=2.98%

# The effect of cigarette smoking is slightly smaller when faminc is added to the 
# regression, but the difference is not great. This is due to the fact that cigs and 
# faminc are not very correlated, and the coefficient on faminc is practically small.


#(C2)
