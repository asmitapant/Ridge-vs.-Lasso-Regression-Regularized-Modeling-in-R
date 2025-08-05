# Ridge-vs.-Lasso-Regression-Regularized-Modeling-in-R
This R script demonstrates how to apply Ridge and Lasso regression using the glmnet package on a simulated dataset with 10 predictors and 100 observations. Both models use cross-validation to select the optimal regularization parameter (lambda).The script visualizes model performance, extracts best lambda values, and prints the coefficients learned by each method to compare how Ridge (ℓ2 penalty) and Lasso (ℓ1 penalty) handle feature shrinkage and selection.
glmnet is loaded to perform penalized regression.Simulated data X (predictors) and y (response) are generated.
Ridge Regression (alpha = 0): Performs cross-validation (cv.glmnet) to find the best lambda.
 Than Produces coefficient estimates that shrink but don’t zero out features.
Lasso Regression (alpha = 1):  also uses cross-validation to find lambda.
Coefficients may shrink to zero, effectively performing variable selection. At last, model performance is plotted, and coefficients are printed at the best lambda.
