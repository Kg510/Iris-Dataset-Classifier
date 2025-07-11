# 🌸 Iris Flower Classification – Machine Learning in R

This project builds a machine learning model to classify iris flowers into one of three species: **Setosa**, **Versicolor**, or **Virginica**, based on measurements of their petals and sepals.

It is based on the classic [Iris dataset](https://archive.ics.uci.edu/ml/datasets/iris) and implemented entirely in **R**, using various models and data visualization techniques.

---

## 📂 Project Structure

```
iris-classification-project/
├── data/
│   ├── iris.csv                 # Raw dataset
│   └── train_test_split.RData   # Preprocessed training/testing data
│
├── iris_model/
│   └── decision_tree_model.rds  # Final trained model
│
├── output/
│   └── confusion_matrix.png     # Evaluation visual
│
├── src/
│   ├── data_preprocessing.R     # Splitting and cleaning
│   ├── visualization.R          # Histograms, scatterplots, pairplots
│   ├── model_training.R         # Training 4 ML models
│   ├── model_evaluation.R       # Accuracy, confusion matrix
│   ├── model_saving.R           # Saves model as RDS
│   └── prediction_function.R    # Predicts species based on new input
│
├── README.md
```

---

## 🧠 Technologies Used

- **Language**: R
- **Libraries**:
  - `rpart` – Decision Tree
  - `caret` – Model evaluation
  - `ggplot2` – Visualization
  - `randomForest`, `e1071`, `nnet` – ML models

---

## 🧪 Models Trained

- Decision Tree ✅
- Logistic Regression ✅
- Random Forest ✅
- Support Vector Machine ✅

---

## 🎯 Accuracy & Evaluation

- Achieved **~90% accuracy** on the test set
- Generated a **confusion matrix plot**
- Output stored at: `output/confusion_matrix.png`

---

## 🔮 Predict Species from New Data

Use the provided function to classify new iris samples:

```r
source("src/prediction_function.R")

# Example input: Sepal.Length, Sepal.Width, Petal.Length, Petal.Width
predict_iris_species(5.1, 3.5, 1.4, 0.2)
# Output: "Iris-setosa"
```

---

## 👨‍💻 Author

**Kunal**  
Machine Learning & Data Science Enthusiast  
GitHub: [Kg510](https://github.com/Kg510)  
LinkedIn: (https://www.linkedin.com/in/kunal-gupta07/)

---

## 📄 License

This project is **not open-source** and is intended for educational or private use only.  
Redistribution, modification, or commercial use without permission is not allowed.
