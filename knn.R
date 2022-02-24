#KNN

library(caret)
library(readr)
library(class)#req for KNN

serviceTestData <- read.csv("S:/DSR/serviceTestData.csv")
serviceTrainData <- read.csv("S:/DSR/serviceTrainData.csv")

View(serviceTestData)
View(serviceTrainData)

str(serviceTestData)
str(serviceTrainData)

summary(serviceTestData)
summary(serviceTrainData)

#apply knn algo

predicknn <- knn(train = serviceTrainData[,-6],
                 test = serviceTestData[,-6],
                 cl = serviceTrainData$Service,
                 k = 3)
predicknn

#create confusion matrix

con_mat <- confusionMatrix(data = predicknn,serviceTestData$Service)
con_mat
