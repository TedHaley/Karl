# Integration Test

# Fresh Install from github
devtools::install_github("UBC-MDS/Karl")

# Generate small data to test our function
set.seed(4)
X <- data.frame('X1' = rnorm(10))
y <- X$X1 + rnorm(10)

print(X)
print(y)

# EDA Function: This function is independent of LinearRegression() function and plot_karl()
summary <- EDA(X,y)
print(summary)

# Linear Regression Function
lm <- LinearRegression(X,y)
print(lm)

# Plot Linear Model Function: plot_karl() is dependent on the output from LinearRegression()
plot_karl(lm)

devtools::test()
