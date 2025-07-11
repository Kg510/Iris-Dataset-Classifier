# visualization.R
library(ggplot2)

# Load the Iris dataset from CSV
iris_data <- read.csv("data/iris.csv")

# 📊 HISTOGRAMS
hist(iris_data$Sepal.Length, 
     col = "skyblue", 
     main = "Sepal Length Distribution", 
     xlab = "Sepal Length")

hist(iris_data$Sepal.Width, 
     col = "lightgreen", 
     main = "Sepal Width Distribution", 
     xlab = "Sepal Width")

hist(iris_data$Petal.Length, 
     col = "coral", 
     main = "Petal Length Distribution", 
     xlab = "Petal Length")

hist(iris_data$Petal.Width, 
     col = "khaki", 
     main = "Petal Width Distribution", 
     xlab = "Petal Width")

# 🟢 DEFINE SPECIES COLORS
species_colors <- c("Iris-setosa" = "red", 
                    "Iris-versicolor" = "green", 
                    "Iris-virginica" = "blue")

# 📈 SCATTER PLOTS

# Sepal plot
plot(iris_data$Sepal.Length, iris_data$Sepal.Width, 
     col = species_colors[iris_data$Species],
     main = "Sepal Length vs Width", 
     xlab = "Sepal Length", 
     ylab = "Sepal Width", 
     pch = 19)

# Petal plot
plot(iris_data$Petal.Length, iris_data$Petal.Width, 
     col = species_colors[iris_data$Species],
     main = "Petal Length vs Width", 
     xlab = "Petal Length", 
     ylab = "Petal Width", 
     pch = 19)

# 🧩 PAIRWISE PLOT
pairs(iris_data[, 1:4], 
      main = "Pairwise Plot of Iris Features", 
      pch = 21, 
      bg = c("red", "green", "blue")[unclass(iris_data$Species)])
