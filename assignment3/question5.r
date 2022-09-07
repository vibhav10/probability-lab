#Q5

#part a
#distribution of X
#X varies from 0 to 31 and we will have to check it for each value of X
prob_v=0:31
#we will store the result in a vector
distrib = dbinom(prob_v, size = 31, prob = 0.447)
#make dataframe with X and distrib
df = data.frame(prob_v, distrib)
#plot the dataframe
print("dataframe")
print(df)



#part b
plot(prob_v,distrib, type="l", lwd=2, col="red", xlab="X", ylab="Probability")


#part c
#for cumulative distribution we will use pbinom function
plot(prob_v, pbinom(prob_v,size = 31, prob = 0.447), type="l")



#part d
#calculating mean, standard deviation and variance
mean(distrib)
sd(distrib)
var(distrib)
