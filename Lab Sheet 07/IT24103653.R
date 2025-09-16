setwd("C:\\Users\\ayody\\OneDrive\\Desktop\\IT24103653")


#Question 01
#probability that the train arrives between 8:10 a.m. and 8:25am
punif(25, min=0, max=40, lower.tail=TRUE) - punif(10, min=0, max=40, lower.tail=TRUE)

#Question 02
#Probability that an update will take at most 2 hours.
pexp(2, rate=1/3, lower.tail=TRUE)

#Question 03 
#(i) Probability that a randomly selected person has an IQ > 130
1 - pnorm(130, mean=100, sd=15)

#(ii) IQ score represents the 95th percentile
qnorm(0.95, mean=100, sd=15)

