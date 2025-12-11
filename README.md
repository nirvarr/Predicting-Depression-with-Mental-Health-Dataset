# Predicting-Depression-with-Mental-Health-Dataset
This project provides a depression score using various feature variables

## 📊 Visualization Gallery

This project now includes comprehensive visualizations for model analysis and comparison. After running the R script, you can:

1. **View generated plots** in the `plots/` directory
2. **Browse the interactive gallery** by opening `visualization_gallery.html` in your web browser

### Available Visualizations

The script generates the following plots automatically:

- **Model Comparison - RMSE**: Compare error rates across all models
- **Model Comparison - R²**: Compare variance explained by each model
- **Feature Correlation Heatmap**: Explore relationships between features
- **Actual vs Predicted**: Scatter plot showing prediction accuracy
- **Decision Tree Visualization**: Visual representation of tree-based decisions
- **Feature Importance**: Ranking of most influential variables
- **Residual Plot**: Diagnostic plot for linear regression
- **Comprehensive Metrics**: Side-by-side comparison of all metrics
- **Distribution Comparison**: Compare actual vs predicted distributions

### Using the Visualization Gallery

Open `visualization_gallery.html` in any web browser to access:

- 🔍 **Search functionality**: Find specific visualizations by keywords
- 🏷️ **Category filters**: Filter by model comparison, features, predictions, or distributions
- 🖼️ **Full-screen view**: Click any image to view it in full size
- 📱 **Responsive design**: Works on desktop and mobile devices

## 🚀 Running the Analysis

Execute the R script to run the analysis and generate visualizations:

```R
source("depression_newdataset")
```

The script will:
1. Load and preprocess the mental health dataset
2. Train 9 different regression models
3. Evaluate model performance
4. Generate all visualizations automatically in the `plots/` folder

## 📈 Models Included

- Linear Regression
- Ridge Regression
- Lasso Regression
- Elastic Net
- Decision Tree
- Random Forest
- Gradient Boosting Machine (GBM)
- Support Vector Regression (SVR)
- XGBoost 
