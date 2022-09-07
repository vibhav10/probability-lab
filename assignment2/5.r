#function to find mode of a median

v_sample<-c(1,2,3,4,5,56,6,7,8,8,1,2,58,2,3,4,4,5,5,5,6,7,7,78,53)

#freq map for sample
freq_map<-function(sample){
    freq_map<-data.frame(sample,rep(0,length(sample)))
    for (i in 1:length(sample))
    {
        freq_map[sample[i],2]<-freq_map[sample[i],2]+1
    }
    return(freq_map)
}

#return the maximum occuring value in freq map
max_occuring<-function(freq_map){
    max_occuring<-0
    for (i in 1:length(freq_map))
    {
        if (freq_map[i,2]>max_occuring)
        {
            max_occuring<-freq_map[i,2]
        }
    }
    return(max_occuring)
}

#return the mode of the sample
mode<-function(freq_map){
    mode<-data.frame(sample,rep(0,length(sample)))
    for (i in 1:length(freq_map))
    {
        if (freq_map[i,2]==max_occuring(freq_map))
        {
            mode[i,2]<-1
        }
    }
    return(mode)
}

mode(freq_map(v_sample))