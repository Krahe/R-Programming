pollutantmean <- function(directory, pollutant, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
  
        filepaths <- list.files(directory, full.names = TRUE)
    
        pframe <- data.frame()

        for(i in id)
        {
            pframe <- rbind(pframe, read.csv(filepaths[i]))
            
            
        }
        
        if(pollutant == "sulfate")
            {pvect <- pframe[["sulfate"]]}
        else if(pollutant == "nitrate")
            {pvect <- pframe[["nitrate"]]}
        else
            {stop("Error: pollutant not found in data set")}
            
        mean(pvect, na.rm = TRUE)
        
        
        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used

        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)
        ## NOTE: Do not round the result!
}