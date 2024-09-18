# Assuming 'y_test' and 'test_preds' are already defined in R

# Load necessary libraries
library(Metrics)

# Example data (replace with your actual data)
y_test <- c(3.0, 4.5, 2.1, 5.7)  # True values
test_preds <- c(2.8, 4.7, 2.0, 5.9)  # Predicted values

# Calculating the metrics
mse <- mse(y_test, test_preds)
mae <- mae(y_test, test_preds)
rmse <- sqrt(mse)
r2 <- cor(y_test, test_preds)^2
adj_r2 <- 1 - (1 - r2) * ((length(y_test) - 1) / (length(y_test) - length(test_preds) - 1))

# Printing the metrics
cat("Mean Squared Error (MSE):", mse, "\n")
cat("Mean Absolute Error (MAE):", mae, "\n")
cat("Root Mean Squared Error (RMSE):", rmse, "\n")
cat("R2 Score:", r2, "\n")
cat("Adjusted R2 Score:", adj_r2, "\n")


