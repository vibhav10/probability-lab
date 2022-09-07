#question 1
#a
dat=c(rep("gold",20), rep("silver",30), rep("bronze",50))
sample_space=sample(dat,10)
sample_space

#b
dat1=c(0.90,0.10)
sample_space1=sample(c("Success","Failure"),10,replace=TRUE,prob=dat1)
sample_space1



#question2
#a
A<-pbirthday(100, classes<-365, coincident<-2)
print(A)

#using own function
sameBirthday<-function(noOfPeople, noOfCategory, noOfCoincident){
    prod=1
    for (i in 1:noOfPeople)
    {
        prod=prod*(1-(i/noOfCategory))
    }
    ans=1-prod
    return(ans)
}

sameBirthday(100, 365, 2)

#b
minNumber<-function(prob,category){
    for (i in 1:1000)
    {
        if (sameBirthday(i,category,2)>=prob)
        {
            return(i+1)
        }
    }
}
minNumber(0.5,365)


#question3
bayesT <- function(P_A,P_B,P_BinA){
  P_BbyA = P_A*P_BinA/P_B
  return(P_BbyA)
} 
rain = 0.2
cloudy = 0.4
cloudyrain = 0.85

print(bayesT(rain,cloudy,cloudyrain))




#question4
#setup
dir.create(path="data")
dir.create(path="output")

#Question4 Part(a)
head(x=iris)
boxplot(formula = Petal.Length ~ Species, data = iris)

#Question4 Part(b)
dimension = dim(iris)

#Question4 Part(c)
range_sepal_length = range(iris$Sepal.Length, na.rm=T)
range_petal_length = range(iris$Petal.Length, na.rm=T)
range_petal_width = range(iris$Petal.Width, na.rm=T)

#Question4 Part(d)
mean_sepal_length = mean(iris$Sepal.Length)
mean_petal_length = mean(iris$Petal.Length)
mean_petal_width = mean(iris$Petal.Width)

#Question4 Part(e)
median_sepal_length = median(iris$Sepal.Length)
median_petal_length = median(iris$Petal.Length)
median_petal_width = median(iris$Petal.Width)

#Question4 Part(f)
first_quantile_sepal_length = quantile(iris$Sepal.Length, prob=0.25)
third_quantile_sepal_length = quantile(iris$Sepal.Length, prob=0.75)
inter_quantile_range_sepal_length = third_quantile_sepal_length-first_quantile_sepal_length

first_quantile_petal_length = quantile(iris$Petal.Length, prob=0.25)
third_quantile_petal_length = quantile(iris$Petal.Length, prob=0.75)
inter_quantile_range_petal_length = third_quantile_petal_length-first_quantile_petal_length

first_quantile_petal_width = quantile(iris$Petal.Width, prob=0.25)
third_quantile_petal_width = quantile(iris$Petal.Width, prob=0.75)
inter_quantile_range_petal_width = third_quantile_petal_width-first_quantile_petal_width
#Question4 Part(g)
standard_dev_sepal_length = sd(iris$Sepal.Length, na.rm=T)
variance_sepal_length = var(iris$Sepal.Length, na.rm=T)

standard_dev_petal_length = sd(iris$Petal.Length, na.rm=T)
variance_petal_length = var(iris$Petal.Length, na.rm=T)

standard_dev_petal_width = sd(iris$Petal.Width, na.rm=T)
variance_petal_width = var(iris$Petal.Width, na.rm=T)

#Question4 Part(i)
summary_dataset_iris = summary(iris)







#question5
calc_mode <-function(datA){
    ans=c()
    freq<-numeric(length=length(datA))
    for (val in datA)
    {
        freq[val]<-freq[val]+1
    }
    max_freq<-max(freq)
    for(val in 1:length(datA)) 
    {
        if (freq[val]==max_freq)
        {
            ans<-c(ans,val)
        }
    }
    print(ans)
}
calc_mode(c(1,2,3,4,5,5,5,4,3,3,2,2,2,2,2,1))
