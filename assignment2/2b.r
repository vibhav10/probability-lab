#using for loop
sameBirthday<-function(noOfPeople, noOfCategory, noOfCoincident){
    prod=1
    for (i in 1:noOfPeople)
    {
        prod=prod*(1-(i/noOfCategory))
    }
    ans=1-prod
    return(ans)
}

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