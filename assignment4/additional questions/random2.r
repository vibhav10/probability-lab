p <- 0.7 #probability of success
q <- 1-p #probability of failure
#probability that it takes less than 4 shots to hit the target
dgeom(1,0.7)+dgeom(0,0.7)+dgeom(2,0.7)+dgeom(3,0.7)