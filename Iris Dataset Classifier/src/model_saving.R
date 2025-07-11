# model_saving.R

library(rpart)

# Load training data
load("data/train_test_split.RData")

# ✅ Retrain model on original features (not PCA)
model <- rpart(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width,
               data = train_data,
               method = "class")

# Save model only (no scaler or PCA)
saveRDS(model, file = "iris_model/decision_tree_model.rds")

cat("✅ Model retrained on original features and saved to iris_model/decision_tree_model.rds\n")
