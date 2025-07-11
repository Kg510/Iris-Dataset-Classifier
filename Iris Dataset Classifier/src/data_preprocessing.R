# data_preprocessing.R
# Load required libraries
library(caTools)

# Load the iris dataset from CSV
iris_data <- read.csv("data/iris.csv")

# Inspect the structure
str(iris_data)

# Check for missing values
print(paste("Missing values:", sum(is.na(iris_data))))

# Split features and target
X <- iris_data[, 1:4]
y <- iris_data[, 5]

# Train-test split
set.seed(123)
sample <- sample.split(y, SplitRatio = 0.8)
train_data <- subset(iris_data, sample == TRUE)
test_data <- subset(iris_data, sample == FALSE)

# Save data to RData format for reuse
save(train_data, test_data, file = "data/train_test_split.RData")
