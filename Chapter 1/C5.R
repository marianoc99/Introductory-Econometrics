COMPUTER EXERCISES (PAGE 19)

(C5)(i)
load("~/fertil2.RData")
View(data)
summary(data$children)

#The smallest value of living children is 0 and the highest 13.
#The average is 2.268 living children per woman.

(ii)
women_electric<- subset(data$electric,data$electric==1)
women_no_electric<-subset(data$electric,data$electric==0)
per_women_elec<-sum(women_electric)/(sum(women_electric==1)+sum(women_no_electric==0))
per_women_elec

#14% of women have electricity

(iii)
women_electric<- subset(data$children,data$electric==1)
mean(women_electric)
women_no_electric<-subset(data$children,data$electric==0)
mean(women_no_electric)

#Women with electricity have on average 1.9 children, while
#women without electricity have 2.3 children.

(iv)# I cannot infer that women have more children because they lack 
#of electricity. This correlation is probably explained by the fact that
#women with lower resources tend to have on average more children.
