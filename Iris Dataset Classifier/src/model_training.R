# model_training.R

# Load required libraries
library(nnet)         # For multinom
library(randomForest)
library(e1071)
library(rpart)

# Load the split dataset
load("data/train_test_split.RData")

# 🔧 Fix: Convert target variable to factor (for classification)
train_data$Species <- as.factor(train_data$Species)
test_data$Species <- as.factor(test_data$Species)

# Train Decision Tree
model_dt <- rpart(Species ~ ., data = train_data, method = "class")

# Train Logistic Regression
model_logreg <- multinom(Species ~ ., data = train_data)

# Train Random Forest
model_rf <- randomForest(Species ~ ., data = train_data)

# Train SVM
model_svm <- svm(Species ~ ., data = train_data)

# Save all models
save(model_dt, model_logreg, model_rf, model_svm, file = "iris_model/all_models.RData")
