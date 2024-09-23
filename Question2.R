nSim <- 100000

#n = 10 
numberOfWins <- 0
for(d in 1:nSim){
  
  n <- 10
  lowerBound <- 1/n
  upperBound <- 1 - lowerBound
  
  #Create set of numbers
  numbers_10 <- runif(n, min=0, max=1) 
  
  #No.values within Range to win
  withinRange <- 0

    for(i in 1:n){
  
        #Condition to Win: 1/n <= x <= 1 - 1/n 
        if(numbers_10[i]<=upperBound){
    
          if(numbers_10[i] >= lowerBound){
            withinRange <- withinRange + 1 
          }
    
        }
  
      
    }
  
  if(withinRange == 10){
    numberOfWins <- numberOfWins+1
  }
}

numberOfWins10 <- numberOfWins
numberOfLosses10 <- nSim - numberOfWins10
relativeFrequency10 <- numberOfWins10/nSim
expectedPayOff10 <- (numberOfWins10*10) - (numberOfLosses10 * 1)
print(expectedPayOff10)




#n = 100
numberOfWins <- 0
n <- 100
for(d2 in 1:nSim){
  
  lowerBound <- 1/n
  upperBound <- 1 - lowerBound
  
  #Create set of numbers
  numbers_100 <- runif(n, min=0, max=1) 
  
  #No.values within Range to win
  withinRange <- 0
  
  for(i2 in 1:n){
    
    #Condition to Win: 1/n <= x <= 1 - 1/n 
    if(numbers_100[i2]<=upperBound){
      
      if(numbers_100[i2] >= lowerBound){
        withinRange <- withinRange + 1 
      }
      
    }
    
    
  }
  if(withinRange == 100){
    numberOfWins <- numberOfWins+1
  }
}

numberOfWins100 <- numberOfWins
numberOfLosses100 <- nSim - numberOfWins100
relativeFrequency100 <- numberOfWins100/nSim
expectedPayOff100 <- (numberOfWins100*10) - (numberOfLosses100 * 1)

#n = 1000
numberOfWins <- 0
n <- 1000
for(d3 in 1:nSim){
  
  lowerBound <- 1/n
  upperBound <- 1 - lowerBound
  
  #Create set of numbers
  numbers_1000 <- runif(n, min=0, max=1) 
  
  #No.values within Range to win
  withinRange <- 0
  
  for(i3 in 1:n){
    
    #Condition to Win: 1/n <= x <= 1 - 1/n 
    if(numbers_1000[i3]<=upperBound){
      
      if(numbers_1000[i3] >= lowerBound){
        withinRange <- withinRange + 1 
      }
      
      
    }
    
    
  }
  if(withinRange == 1000){
    numberOfWins <- numberOfWins+1
  }
  
}

numberOfWins1000 <- numberOfWins
numberOfLosses1000 <- nSim - numberOfWins1000
relativeFrequency1000 <- numberOfWins1000/nSim
expectedPayOff1000 <- (numberOfWins1000*10) - (numberOfLosses1000 * 1)


numberOfWinsVector <- c(numberOfWins10,numberOfWins100,numberOfWins1000)



df <- data.frame(N = c("10","100","1000"),
                "Wins" = c(numberOfWins10,numberOfWins100,numberOfWins1000),
                 "Relative Frequency" = c(relativeFrequency10,relativeFrequency100,relativeFrequency1000),
                "Expected Payout" = c(expectedPayOff10,expectedPayOff100,expectedPayOff1000))


dataSetWins<-data.frame(numberOfWins10,numberOfWins100,numberOfWins10)
dataSetExpectedPayout <- data.frame(expectedPayOff10,expectedPayOff100,expectedPayOff1000)


labels <- c("10","100","1000")

# Create a dot chart
dotchart(numberOfWinsVector, labels = labels,  main = "Monte Carlo Simulation", xlab = "Number Of Wins", ylab = "N")

hist(numberOfWinsVector)
table(dataSetWins)

tableToPutInExcel <- table(dataSetWins)
write.csv(tableToPutInExcel, "C:\\Users\\Student\\Downloads\\New folder (3)\\Question2.csv", row.names=FALSE)

