COMPUTER EXERCISES (PAGE 17/18)

(C1)(i)
load("C:/Users/carmo/OneDrive/Escritorio/S/R data sets for 5e/wage1.RData")
education_level <- data$educ
summary(education_level)

sum(education_level==0)
sum(education_level==18)

The minimum year of education is 0 and the maximum is 18 years.
2 people have 0 years of education and 19 people have 18 years of education.

(ii)
hourly_wage<-data$wage
mean(hourly_wage)

The hourly average wage is 5.896103. It seems to be low.

(iii)
CPI_1976 <- 56.9
CPI_2010<-218.056

iv)
hourly_wage_2010 <-hourly_wage*CPI_2010/CPI_1976
mean(hourly_wage_2010)
The average wage in 2010 is $22.60, which seems to be high

(v)
female<-sum(data$female)
female
male <-526- female
male

There are 252 women and 274 men
