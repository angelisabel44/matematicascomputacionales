# list all datasets in the package
library(help = "datasets")
library(help = "mlbench")

# iris flowers datasets
data(iris)
head(iris)

# Longley's Economic Regression Data
data(longley)
head(longley)

#install.packages("mlbench")

# load the package
library(mlbench)

# Boston Housing Data
data(BostonHousing)
head(BostonHousing)


############################################################################################################################
## Understand Your Data Using Descriptive Statistics

# Pima Indians Diabetes Database
data(PimaIndiansDiabetes2)
head(PimaIndiansDiabetes, n = 20)

# list types for each attribute
sapply(PimaIndiansDiabetes, class)

# distribution of class variable
y <- PimaIndiansDiabetes$diabetes
cbind(freq=table(y), percentage=prop.table(table(y))*100)

y <- iris$Species
cbind(freq=table(y), percentage=prop.table(table(y))*100)

# summarize the dataset
summary(PimaIndiansDiabetes)
summary(iris)

# calculate standard deviation for all attributes
sapply(PimaIndiansDiabetes[,1:8], sd)

# calculate skewness for each variable
library(e1071)
skew <- apply(PimaIndiansDiabetes[,1:8], 2, skewness)
# display skewness, larger/smaller deviations from 0 show more skew
print(skew)

# calculate a correlation matrix for numeric variables
correlations <- cor(PimaIndiansDiabetes[,1:8])
correlations <- cor(iris[,1:4])
# display the correlation matrix
print(correlations)

#########################################################################################################################################
# Understand Your Data Using Data Visualization

## Histograms
# load the data
data(iris)
# create histograms for each attribute
par(mfrow=c(1,4))
for(i in 1:4) {
  hist(iris[,i], main=names(iris)[i])
}

## Density Plots
# load packages
library(lattice)
# create a layout of simpler density plots by attribute
par(mfrow=c(1,4))
for(i in 1:4) {
  plot(density(iris[,i]), main=names(iris)[i])
}

## Box And Whisker Plots
# Create separate boxplots for each attribute
par(mfrow=c(1,4))
for(i in 1:4) {
  boxplot(iris[,i], main=names(iris)[i])
}

## Bar Plots
data(BreastCancer)
# create a bar plot of each categorical attribute
par(mfrow=c(2,4))
for(i in 2:9) {
  counts <- table(BreastCancer[,i])
  name <- names(BreastCancer)[i]
  barplot(counts, main=name)
}

## Missing Plot
# load packages
library(Amelia)
# load dataset
data(Soybean)
# create a missing map
missmap(Soybean, col=c("black", "grey"), legend=FALSE)


##############################################################################################################################
## Multivariate Visualization


## Correlation Plot
# load package
library(corrplot)
# calculate correlations
correlations <- cor(iris[,1:4])
# create correlation plot
corrplot(correlations, method="circle")

## Scatter Plot Matrix
# pairwise scatter plots of all 4 attributes
pairs(iris)


## Scatter plot Matrix By Class
# pairwise scatter plots colored by class
pairs(Species~., data=iris, col=iris$Species)


## Density Plots By Class
# load the package
library(caret)
# density plots for each attribute by class value
x <- iris[,1:4]
y <- iris[,5]
scales <- list(x=list(relation="free"), y=list(relation="free"))
featurePlot(x=x, y=y, plot="density", scales=scales)


## Box And Whisker Plots By Class
# box and whisker plots for each attribute by class value
x <- iris[,1:4]
y <- iris[,5]
featurePlot(x=x, y=y, plot="box")






