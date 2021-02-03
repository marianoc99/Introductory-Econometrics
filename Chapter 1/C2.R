COMPUTER EXERCISES (PAGE 17/18)

(C2)(i)
load("~/bwght.RData")
View(data)
female <- sum(data$male==0)
female
pregnant_smoke <- sum(data$male==0 & data$cigs>0)
pregnant_smoke

# There are 665 women and 112 of them admited smoking during pregnancy.

(ii)
data<-as.data.frame(data)
women<-subset(data,data$male==0)
View(women)
avg_daily_cigs<-mean(women$cigs)
avg_daily_cigs

#The average number of daily smoked cigarettes is 2.09 for women. 
# No, this is not a good measure of the "typical" woman, since most of them dont even smoke.

(iii)
smoking_women<-subset(women,women$cigs>0)
daily_cigs_smokingwomen<-mean(smoking_women$cigs)
daily_cigs_smokingwomen

#The average amount of daily cigarettes for smoking women is 12.41071
#This is not a good measure either given the fact that most of the women do not smoke

(iv)
View(data$fatheduc)
fathereduc<-subset(data$fatheduc,data$fatheduc>=0)
mean(fathereduc)

#The mean is equal to 13.19. This mean is computed from 1192 elements, given the fact that the others may not have been able to answer.

(v)
View(data$faminc)
mean(data$faminc)
sd(data$faminc)

# The average family income is 29.03 with a SD of 18.74
