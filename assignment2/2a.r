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
