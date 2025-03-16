custom_mean_args <- function(my_vector) {
  sum_vector <- sum(my_vector)
  mean_vector <- sum_vector / length(my_vector)
  return(mean_vector)
}

custom_mean_args(c(10, 20, 30))