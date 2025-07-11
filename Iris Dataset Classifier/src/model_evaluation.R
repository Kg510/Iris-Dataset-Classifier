# Load libraries
library(caret)
library(ggplot2)
library(randomForest)

# Load data and models
load("data/train_test_split.RData")
load("iris_model/all_models.RData")

# Convert to factor again just to be sure
test_data$Species <- as.factor(test_data$Species)

# Predict using Random Forest
pred <- predict(model_rf, test_data)  # should now work

# Align factor levels
pred <- factor(pred, levels = levels(test_data$Species))

# Confusion Matrix
conf <- confusionMatrix(pred, test_data$Species)
print(conf)

# Plot confusion matrix
cm_df <- as.data.frame(conf$table)
p <- ggplot(cm_df, aes(Prediction, Reference, fill = Freq)) +
  geom_tile() +
  geom_text(aes(label = Freq), color = "black") +
  scale_fill_gradient(low = "white", high = "steelblue") +
  theme_minimal() +
  labs(title = "Confusion Matrix", x = "Predicted", y = "Actual")

# Save plot
ggsave("output/confusion_matrix.png", p, width = 8, height = 6)
