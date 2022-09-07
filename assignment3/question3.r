#Q3
#i
cat("Probability that no car arrives:",ppois(0, lambda = 5))
print('')

#ii
p_47 <- ppois(47,lambda = 50) #less than equal to 47 cars in poisson
p_50 <- ppois(50,lambda = 50) #less than equal to 50 cars in poisson
cat("probability that there are between 48 to 50 cars", p_50 - p_47)
print('')


#using dpois
d_48 <- dpois(48,lambda = 50) # equal to 48 cars in poisson
d_49 <- dpois(49,lambda = 50) # equal to 49 cars in poisson
d_50 <- dpois(50,lambda = 50) # equal to 50 cars in poisson
cat("probability that there are between 48 to 50 cars", d_50 + d_49 + d_48)