corr<-function(threshold = 0){
    ## obtaining the required files by storing them into mydata variable
    myfiles <- list.files(path = "../specdata/")

    ## creating an empty numeric vector which will hold the final result
    result <- vector(mode = "numeric", length = 0) 
    for(i in 1:332) 
    {
        ## Reading and storing the required files without NAs into goodfile variable
        mydata <- na.omit(read.csv(myfiles[i]))
        if( nrow(mydata) > threshold ) {
            
            ## calculating the correlation and combine in the result empty vector
            corvector <- cor(mydata[,"sulfate"], mydata[,"nitrate"])
            result <- append(result,corvector)
        }
    }
    ## return the result
    result
}