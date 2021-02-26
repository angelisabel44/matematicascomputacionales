library(mlbench)
data(Glass)

# summarize the dataset
summary(Glass)

# calculate standard deviation for all attributes
sapply(Glass[,1:9], sd)

## Density Plots
# create a layout of simpler density plots by attribute
par(mfrow = c(1, 3)) # Para graficar 3 graficas.
for(i in 1:9) {
  plot(density(Glass[,i]), xlab = names(Glass)[i], ylab = "Densidad", main = "")
}

par(mfrow = c(1,1)) # Para ya no graficar 3 graficas en una figura.

# distribution of class variable
y <- Glass$Type
frecuencias <- cbind(freq=table(y), percentage=prop.table(table(y))*100)
barplot(frecuencias[,2], width = 1, xlab = "Tipo de vidrio", ylab = "Porcentaje (%)", ylim = c(0, 50))

# load package
library(corrplot)
# calculate correlations
correlations <- cor(Glass[,1:9])
# create correlation plot
corrplot(correlations)

# Scatter plot
plot(Glass[,1], Glass[,7], xlab = names(Glass)[1], ylab = names(Glass)[7])
plot(Glass[,1], Glass[,5], xlab = names(Glass)[1], ylab = names(Glass)[5])


