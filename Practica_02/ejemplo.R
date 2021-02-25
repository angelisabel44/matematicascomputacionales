library(mlbench)
data(Glass)

## Box And Whisker Plots
# Create separate boxplots for each attribute
for(i in 1:9) {
  boxplot(Glass[,i], main = names(Glass)[i])
}

par(mfrow=c(1,3))
for(i in 1:9) {
  plot(density(Glass[,i]), main = names(Glass)[i])
}

# distribution of class variable
y <- Glass$Type
frecuencias <- cbind(freq=table(y), percentage=prop.table(table(y))*100)
barplot(frecuencias[,2], xlab = "Tipo de vidrio", ylab = "Porcentaje")

