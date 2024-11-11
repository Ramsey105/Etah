#model <- lm(medv ~ crim + zn + indus + chas + nox + rm + age + dis + rad + tax + ptratio + black + lstat, data = trainData)
#What's happening here?

#This line fits a multiple linear regression model to predict `medv` (median house price) based on 12 predictor variables:
#1. `crim`: Crime rate
#2. `zn`: Proportion of residential land zoned for lots over 25,000 sq.ft.
#3. `indus`: Proportion of non-retail business acres per town
#4. `chas`: Charles River dummy variable (1 if tract bounds river, 0 otherwise)
#5. `nox`: Nitrogen oxides concentration (parts per 10 million)
#6. `rm`: Average number of rooms per dwelling
#7. `age`: Proportion of owner-occupied units built prior to 1940
#8. `dis`: Weighted distances to five Boston employment centres
#9. `rad`: Index of accessibility to radial highways
#10. `tax`: Full-value property-tax rate per $10,000
#11. `ptratio`: Pupil-teacher ratio by town
#12. `lstat`: Percentage of lower status of the population

#*Multiple Linear Regression Equation:*
#The model estimates the following equation:
#`medv = β0 + β1*crim + β2*zn + ... + β12*lstat + ε
#where:
#- `β0` is the intercept
#- `β1` to `β12` are coefficients for each predictor variable
#- `ε` is the error term (residuals)

#RMSE (Root Mean Squared Error) Section
#predictions <- predict(model, testData)
#rmse <- sqrt(mean((testData$medv - predictions)^2))
#print(paste("Root Mean Squared Error (RMSE):", rmse))
#What's happening here?
#  This section calculates the Root Mean Squared Error (RMSE) to evaluate the model's performance.
#Steps:
#1. `predict(model, testData)`: Uses the trained model to predict `medv` values for the testing data.
#2. `testData$medv - predictions`: Calculates the differences between actual and predicted values.
#3. `mean((testData$medv - predictions)^2)`: Calculates the Mean Squared Error (MSE).
#4. `sqrt(mean((testData$medv - predictions)^2))`: Calculates the square root of MSE, resulting in RMSE.
#RMSE Interpretation:
#RMSE measures the average magnitude of errors (residuals) between actual and predicted values. Lower RMSE values indicate better model performance.

#Common RMSE Thresholds:
#- Low RMSE (< 10% of the mean `medv` value): Excellent model performance
#- Moderate RMSE (10-20%): Good model performance
#- High RMSE (> 20%): Poor model performance


