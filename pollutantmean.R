pollutantmean <- function(pollutant,id=1:332){
    
    
    myfiles<-list.files(path = "../specdata/",pattern = "*.csv")[id]
    
    #setwd("/home/akafarrouk/Projects/R-proj/week2AssCourse2/specdata/")
    mydata<-lapply(myfiles,read.csv)
    
    combinedata<-do.call(rbind.data.frame,mydata)
    
    mean(combinedata[,pollutant],na.rm = TRUE)
    
}