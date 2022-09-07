#question 1
#a
dat=c(rep("gold",20), rep("silver",30), rep("bronze",50))
sample_space=sample(dat,10)
sample_space

#b
dat1=c(0.90,0.10)
sample_space1=sample(c("Success","Failure"),10,replace=TRUE,prob=dat1)
sample_space1
