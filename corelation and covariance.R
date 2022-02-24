print("Correlation and covariance")

d <- data.frame(x1=rnorm(10),x2=rnorm(10),x3=rnorm(10))
cor(d)
m <- cor(d)
corrplot(m,method="square")
x<- matrix(rnorm(2),nrow = 5,ncol = 4)
y <- matrix(rnorm(15),nrow = 5,ncol = 3)
COR<-cor(x,y)
COR

corr<- cor(iris[,1:4])
round(corr,3)
pairs(iris[,1:4])

