p <- 0.7 #probability of success
q <- 1-p #probability of failure
#the probability that the target will be hit on the 10th attempt
prob <- (0.3^9) *0.7
dgeom(9,0.7)