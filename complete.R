complete <- function (directory , id =1:332) {
  files <- list.files(directory , full.names = TRUE)
  dd <- data.frame()
  idd<-c(id)
  dataa<- c()
  j=1;
  for (i in id ){
    dd <- read.csv(files[i])
    dataa[j] <- nrow(na.omit(dd))

    j<-j+1
    }
  dod<- data.frame(id = idd , nobs = dataa)
  dod
}
