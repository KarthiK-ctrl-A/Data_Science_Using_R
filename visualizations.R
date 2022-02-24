#visualization

#Boxplot

input <- mtcars[,c('mpg','cyl')]
input
boxplot(mpg~cyl,data=mtcars,xlab="number of cyl",ylab = "miles per gallon",main = "mileage data")


#Scatterplot

ip1 <- mtcars[,c('wt','mpg')]
ip1

plot( x = ip1$wt, y = ip1$mpg,
      xlab = "weight",
      ylab = "Milage",
      xlim = c(2,5.5),
      ylim = c(15,30),
      main = "weight - Milage"
)


#ouliers using boxplot

v = c(50,75,100,125,140,250)
boxplot(v)

#Histogram

library(graphics)
v <- c(9,13,21,8,36,22,12,41,31,33,19)
hist(v,xlab="weight",col="blue",border="green")

#Barplot

library(graphics)
H <- c(7,12,28,3,41)
M <- c("Jan","Feb","Mar","Apr","May")

barplot(H,name.arg=M,xlab="Month",ylab = "Revenue", col="blue", border = "red")

#piechart

library(graphics)
x <- c(21,62,10,53)
lab <- c("London","NewYork","Singapore","Mumbai")
pie(x,lab)
