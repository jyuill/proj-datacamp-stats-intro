### DataCamp - Histograms and Distributions

str(airquality)
head(airquality)

str(trees)
trees
describe(trees)
summary(trees)
theight <- trees$Height
hist(theight,main="Distribution of tree height",xlab="score",ylab="frequency")
library(ggplot2)
ggplot(trees,aes(x=Height))+geom_histogram(binwidth=5)

str(PlantGrowth)
head(PlantGrowth)
summary(PlantGrowth)
group.ctrl <- subset(PlantGrowth[PlantGrowth$group=="ctrl",])
group.trt1 <- subset(PlantGrowth[PlantGrowth$group=="trt1",])
group.trt2 <- subset(PlantGrowth[PlantGrowth$group=="trt2",])
weight.ctrl <- group.ctrl$weight
hist(group.ctrl$weight)
par(mfrow=c(2,2))
hist(group.ctrl$weight)
hist(group.trt1$weight)
hist(group.trt2$weight)


## with dplyr + ggplot2
library(dplyr)
groupd.ctrl <- filter(PlantGrowth,group=="ctrl")
ggplot(PlantGrowth,aes(x=weight))+geom_histogram(binwidth=0.5)+facet_grid(group~.)
ggplot(PlantGrowth,aes(x=weight,fill=group))+geom_histogram(binwidth=0.5)
