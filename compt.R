compt<- function(id=1:332){
    #setwd("/home/akafarrouk/Projects/R-proj/week2AssCourse2/specdata/")
    
    myfiles<-list.files(path="../specdata/",pattern = "*.csv")[id]
    print(myfiles)
    
    mydata=lapply(myfiles,read.csv)
    
    nacount=0
    
    df=matrix(NA,nrow = length(mydata),ncol = 2)
    colnames(df)<-c("id","nobs")
   
    
    for(i in 1:length(mydata)){
        size=dim(mydata[[i]])[1]
        for(j in 1:size){
            if(is.na(mydata[[i]][j,"sulfate"]) || is.na(mydata[[i]][j,"nitrate"])){
                nacount=nacount+1
            }
        }
        df[i,"id"]<-id[i]
        df[i,"nobs"]<-size-nacount
        nacount<-0
    }
    df
    
    
    
    
    
}