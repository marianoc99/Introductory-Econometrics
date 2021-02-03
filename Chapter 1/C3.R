#COMPUTER EXERCISES (PAGE 18)

(C3)(i)
load("~/meap01.RData")
min(data$math4)
max(data$math4)

#Yes, the range make sensethe percentage. The percentages receiving a passing score
#should fluctuate between 0-100.

(ii)
schools_PPS<-sum(data$math4==100)
schools_PPS
porcentage_PPS <- sum(data$math4==100)/nrow(data)
porcentage_PPS

#The amount of schools with PPS is 38, which equals 2% of all schools

(iii)
schools_50PS<-sum(data$math4==50)
schools_50PS

#17 schools have a PS ofexactly 50%.

(iv)
mean(data$math4)
mean(data$read4)

#The hardest subject to pass is reading.

(v)
cor(data$math4,data$read4)

#The correlation coefficient is .84, which means theres a strong positive 
#correlation between passing scores in math and reading.

(vi)
p_differential_AtoB <- ((6000-5000)/5000)*100
log_differential_AtoB<-100*(log(6000)-log(5000))
p_differential_AtoB
log_differential_AtoB
p_differential_AtoB - log_differential_AtoB

#The two methods differ on 1.77 porcentual points
