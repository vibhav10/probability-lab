# 1. A Box contains 100 cellphones, 20 of which are defective. 10 cellphones are selected for
# inspection. Find the probability that (i) at least one is defective, (ii) at the most three are defective, (iii) all the ten are defective and (iv) none of ten is defective.

#part i
p <- 0.2 #probabilitity of choosing a defective cellphone
q <- 1-p #probability of choosing a non-defective cellphone

atleastOne <- pbinom(0,10,20/100,lower.tail = FALSE)
print(atleastOne)

#part ii
atmostThree <- pbinom(3,10,20/100)
print(atmostThree)
#part iii
allTen <- dbinom(10,10,20/100)
print(allTen)

#part iv
none <- pbinom(0,10,20/100)
print(none)