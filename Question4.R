#Group Project: Question 4

#create deck of numbers from 1 - 100
deck <- 1:100


numberOfHits <- 0

collectionOfHits <- c(1:10000)

for(n2 in 1:10000){
  numberOfHits <- 0
  ShuffledDeck <-sample(deck, size=100, replace=FALSE)
  
  for(n in 1:100){
  
     if(n == ShuffledDeck[n]){
     numberOfHits <- numberOfHits+1
     }
    
    
  }
  collectionOfHits[n2]<-numberOfHits
  
}

#Expected Value
vectorSum <- sum(collectionOfHits)
numberOfElements <- length(collectionOfHits)
expectedValue <- vectorSum/numberOfElements

#Variation
variation <- var(collectionOfHits)

#Bar Plot
  barplot( table(collectionOfHits), main="Number of Hits",
           xlab="Number of Hits",ylab="Frequency")
  
 

hist(collectionOfHits)
#Summarization  
  summary(collectionOfHits)
  sd(collectionOfHits)
  
tableOfCollectionOfHits <-   table(collectionOfHits)

  
write.csv(tableOfCollectionOfHits, "C:\\Users\\Student\\Downloads\\New folder (3)\\helpme.csv", row.names=FALSE)
  
