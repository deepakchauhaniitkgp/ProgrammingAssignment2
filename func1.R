pollutantmean <- function (directory, pollutant, id = 1:332) 
  {
  files <- list.files(directory)
  dd<- data.frame()
  for (i in id )
    dd <- rbind(dd, read.csv(files[i]))
  
  
  mean_data <- mean(dd[,pollutant], na.rm = TRUE)
}