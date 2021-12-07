# Working with Datasets - DESCRIPTIVE STATISTICS IN R

#print mtcars dataset
mtcars

#to get info about data set
?mtcars

#use dim() to get no.of rows & columns  and names() to get column names 
Data <- mtcars
dim(Data)
names(Data)

#rownames() to get first column
rownames(Data)

#print values of a column [as simple as vector]

Data$cyl

#sort the variable values
sort(Data$cyl)

#summary()  gives the statistical summary of the dataset
summary(Data)

#max and min values of an attribute
max(Data$hp)
min(Data$hp)

#print row names of the max or min
rownames(Data)[which.max(Data$hp)]
rownames(Data)[which.min(Data$hp)]


#mean() gives the average value of an attribute
mean(Data$wt)

#median() gives the middle most value of an attribute
median(Data$wt)

#Mode is the value that appears for the most number of times
names(sort(-table(Data$wt)))[1]  #without index[1] it sorts all the values which are repeated from highest to lowest

#percentiles 

#1st quantile - 25% -> 0.25
quantile(Data$wt,c(0.25))

#2nd quantile - 50% -> 0.5
quantile(Data$wt,c(0.5))

#3rd quantile - 25% -> 0.75
quantile(Data$wt,c(0.75))

#Full quantile
quantile(Data$wt)

#Inter Quartile Range
IQ = IQR(Data$wt)
print(IQ)

         