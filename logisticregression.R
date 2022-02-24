print("Logistic Regression")

data <- read.csv("S:/DSR/binary.csv") #get exact location of the file

View(data)

str(data)

data$ADMIT <- as.factor(data$ADMIT)

data$RANK <- as.factor(data$RANK)

str(data)

summary(data)

plot(data$GPA,data$GRE,col="red")

cor(data$GRE,data$GPA)

#Exploratory Analysis

library(ggplot2) #install.packages("ggplot2")

ggplot(data,aes(ADMIT,GRE,fill=ADMIT))+
  geom_boxplot()+
  theme_bw()+
  xlab("Admit")+
  ylab("GRE")+
  ggtitle("ADMIT BY GRE")

# GPA

ggplot(data,aes(ADMIT,GPA,fill=ADMIT))+
  geom_boxplot()+
  theme_bw()+
  xlab("Admit")+
  ylab("GPA")+
  ggtitle("ADMIT BY GPA")

# Rank

ggplot(data,aes(RANK,ADMIT,fill=ADMIT))+
  geom_col()+
  theme_bw()+
  xlab("Rank")+
  ylab("Count-Admit")+
  ggtitle("ADMIT BY Rank")


#Modelling
#Data splitting

library(caret)

set.seed(125)
ind <- createDataPartition(data$ADMIT,p=0.80,list=FALSE)
training <- data[ind,]
testing <- data[-ind,]

#fiitng model

set.seed(123)
mymodel <- glm(ADMIT~GPA+RANK, data= training
               ,family = binomial(link = 'logit'))
summary(mymodel)

#making predictions

pred <- predict(mymodel,testing,type="response")
pred <- ifelse(pred>=0.5,1,0)

#confusion matrix
pred <- as.factor(pred)
confusionMatrix(pred,testing$ADMIT)

# calculating ROC
library(lares)
tag.l <- as.numeric(testing$ADMIT)
score.l <- as.numeric(pred)
mplot_roc(tag = tag.l,score = score.l)