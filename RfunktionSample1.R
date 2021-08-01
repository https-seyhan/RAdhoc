setwd("C:/Heritage/release2")
sample <- read.table("randomsamplehospital3.csv", sep=",", header=T)

m <- 120000
i <- 1
countZeros <- function(x)
{
  for (j in 1:m)
  {
    if (sample$DaysInHospital == "0") {i=i+1 }
  # print (i)
  }
  return (i)
}

f <- function(x,y)
{
  x^y
}

tt <-read.table("C:/Wikipedia/newfields.csv", sep=",", header=TRUE)

tt$newcol <- 0
tt$newcolumn <- ifelse(tt$Tot1==0, "Main", "Tobedetermined")

generateTarget <- function(row)
{
   if (row[2]== 0) "Talk"
   #if (as.numeric(row[5]) == 1) 'Talk'
   #if (as.numeric(row[5]) == 2) 'User'
   #if (as.numeric(row[5]) == 3) 'UserTalk'
   #if (as.numeric(row[5]) == 4) 'Wikipedia'
   #if (as.numeric(row[5]) == 5) 'WikipediaTalk'
}

tt$newcol <- apply(tt,1,generateTarget)
vec <- 1:10
DF <- data.frame(start=c(1,3,5,7), end=c(2,6,7,9))

DF$newcol <- apply(DF,1,function(row) mean(vec[ row[1] : row[2] ] ))

                generateCol <- function(row)
{
  if (row[2] == 9) "TMP"
}

DF$newcol2<- apply(DF,1,generateCol)
