#5. Suppose that, on average, 1 person in 1000 makes a numerical error in preparing his or her income tax return. If 10,000 forms are selected at random and examined, find the probability that 6, 7 or 8 of the forms contain an error.

#using ppois function from R
#probability that 6,7 or 8 forms contain an error

dpois(8,10)+dpois(7,10)+dpois(6,10)
dbinom(6,10000,0.001)+dbinom(7,10000,0.001)+dbinom(8,10000,0.001)