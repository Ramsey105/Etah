#' Splitting of data
#'
#' @param data a number
#' @param indices a number
#'
#' @return a number
#' @export
#'
#' @examples
splitData <- function(data, indices) {
  # Split data into training and testing sets
  trainData <- data[indices, ]
  testData <- data[-indices, ]

  # Return list containing training and testing data
  return(list(trainData = trainData, testData = testData))
}
