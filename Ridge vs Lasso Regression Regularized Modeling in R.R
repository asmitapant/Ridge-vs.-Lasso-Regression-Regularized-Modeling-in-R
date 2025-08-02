# Install and load package
install.packages("glmnet")
library(glmnet)

# Generate sample data
set.seed(123)
X <- matrix(rnorm(100*10), 100, 10) # 100 observations, 10 features
y <- rnorm(100)

# Ridge Regression (alpha = 0)
ridge_model <- cv.glmnet(X, y, alpha = 0)
plot(ridge_model)
cat("Best lambda (Ridge):", ridge_model$lambda.min, "\n")

# Lasso Regression (alpha = 1)
lasso_model <- cv.glmnet(X, y, alpha = 1)
plot(lasso_model)
cat("Best lambda (Lasso):", lasso_model$lambda.min, "\n")

# Coefficients
cat("\nRidge Coefficients:\n")
print(coef(ridge_model, s = ridge_model$lambda.min))

cat("\nLasso Coefficients:\n")
print(coef(lasso_model, s = lasso_model$lambda.min))