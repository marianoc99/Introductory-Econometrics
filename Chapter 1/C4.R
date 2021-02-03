#COMPUTER EXERCISES (PAGE 18)

(C4)(i)
load("~/jtrain2.RData")
View(data)
porcentage_train<-(sum(data$train==1))/(sum(data$train==0)+sum(data$train==1))
porcentage_train

#41% of the men receive training

(ii)
men_training<-subset(data$re78,data$train==1)
men_no_training<-subset(data$re78,data$train==0)
mean(men_training)/mean(men_no_training)

#The difference between the average earning in 1978 for men with 
#and without training is 40%.

(iii)
unem_training<-sum(data$unem78==1 & data$train==1)
rate_unem_t<-unem_training/sum(data$train==1)
rate_unem_t

unem_no_training<-sum(data$unem78==1 & data$train==0)
rate_unem_no_t<-unem_no_training/sum(data$train==0)
rate_unem_no_t

#35% of men without training are unemployed, while 24% of the men with
#training are unemployed.

(iv)
#The job training appears to be effective, given the fact that it increased
#workers salaries and reduced its unemployment
