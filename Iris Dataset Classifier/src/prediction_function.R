# prediction_function.R

predict_iris_species <- function(sepal_length, sepal_width, petal_length, petal_width) {
  model <- readRDS("iris_model/decision_tree_model.rds")
  
  input <- data.frame(
    Sepal.Length = sepal_length,
    Sepal.Width = sepal_width,
    Petal.Length = petal_length,
    Petal.Width = petal_width
  )
  
  prediction <- predict(model, input, type = "class")
  return(as.character(prediction))
}
