# Load necessary libraries
library(Gradalgo)
# Load Boston Housing data
load("C:/Users/LENOVO/Desktop/Gradalgo/Boston.rda")
# Explore data
str(Boston)#displays the compact summary of the internal structure of the boston dataset
summary(Boston)#provides more detailed summary of each var in the boston dataset
# Split data into training and testing sets: This part splits the data set into 2 parts
#-a training set(70% of the data), - a testing set (30% of the data)
set.seed(123)# this pàermites that the slpit is done thesame way every time the code is run
trainIndex <- createDataPartition(Boston$medv, p = 0.7, list = FALSE)#creates partition of the data based on the medv column
#medv specifies the column to be used for partitioning
#p=0.7 proportion of the data to include the training set (70%)

data_split <- splitData(Boston, trainIndex)#The split data function takes 2 arguments ie the boston housing dataset , and the trainIndex spliting the data into training(7%)
                                           #and testing sets(30%)
trainData <-  data_split$trainData#extracts the training datasets
testData <- data_split$testData#extracts the testing datasets

# Fit multiple linear regression model
model <- lm(medv ~ crim + zn + indus + chas + nox + rm + age + dis + rad + tax + ptratio + black + lstat, data = trainData)# fits a multiple linear regression model to medv using 12 predictor variables
# Summarize model
summary(model)#displays the model summary statistics

# Make predictions on test data
predictions <- predict(model, testData)

# Evaluate model performance
rmse <- sqrt(mean((testData$medv - predictions)^2))
print(paste("Root Mean Squared Error (RMSE):", rmse))


# Visualize actual vs. predicted values
library(ggplot2)
ggplot(data.frame(actual = testData$medv, predicted = predictions), aes(x = actual, y = predicted)) +
  geom_point() +
  geom_abline(intercept = 0, slope = 1, color = "red") +
  labs(title = "Actual vs. Predicted House Prices", x = "Actual Price", y = "Predicted Price")
