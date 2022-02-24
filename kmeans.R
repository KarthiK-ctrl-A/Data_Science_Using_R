#clusterinf KMeans

library(ggplot2)

df <- iris

head(iris)

ggplot(df,aes(Petal.Length,Petal.Width))+
         geom_point(aes(col=Species),size=4)

set.seed(101)

irisCluster <- kmeans(df[,1:4],center=3,nstart = 20)

irisCluster

table(irisCluster$cluster,df$Species)

library(cluster)

clusplot(iris,irisCluster$cluster, color=T,shade = T,labels = 0, lines = 0)

#elbow

tot.withinss <- vector(mode="character",length=10)
for(i in 1:10){
  irisCluster <- kmeans(df[,1:4],center = i, nstart = 20)
  tot.withinss[i] <- irisCluster$tot.withinss
}

plot(1:10,tot.withinss,type="b",pch=19)
