#Q1
#pbinom givies cummulative probability distribution
#so we calculate it by calculating cummulative probability of 0<=x<=9 and then subtract probabilty of 0<=x<=6 from it, which gives us 7<=x<=9
pbinom(9, size = 12, prob = 1/6) - pbinom(6, size=12, prob = 1/6)

#calculate 7<=x<=9 using dbinom
#dbinom gives the probability distribution at each point
dbinom(9, size = 12, prob = 1/6) + dbinom(8, size=12, prob = 1/6) + dbinom(7, size=12, prob = 1/6)
