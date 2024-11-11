#' creating  data partitioning
#'
#' @param y a number
#' @param p a number
#' @param list a vector
#'
#' @return a number
#' @export
#'
#' @examples
createDataPartition<- function(y, p, list = FALSE) {#y(the input vector usually the target variable) used to det the partition,
                                                    #p(the proportion of data to include in the training set)
                                                    #list(An optional logical arguement indicating whether to return a list of indices or a single vector)
  # Set seed for reproducibility
  set.seed(123)# sets the random seed to ensure reproducibility of the partition
               # this line ensures that thesame partition will be generated each time a funtion is called
  # Calculate sample size
  n <- length(y)#calculates the total lenght(n) of the input vector y
  sample_size <- ceiling(p * n)#rounds up p*n  to the nearest integer

  # Create indices for training data
  indices <- sample(n, sample_size, replace = FALSE)#generates sample indices from 1-n


  # Return indices or logical vector
  if (list) {
    return(split(indices, cut(indices, breaks = n, include.lowest = TRUE)))
  } else {
    return(indices)#else returs a vect of indices ..
#conditional statement, checking the val of list,if true, returns a list of indices split by breaks defined by cut()
  }
}
