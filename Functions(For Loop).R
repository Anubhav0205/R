custom_mean_for <- function(my_vector) {
  sum_vector <- 0
  for (element in my_vector) {
    sum_vector <- sum_vector + element
  }
  mean_vector <- sum_vector / length(my_vector)
  return(mean_vector)
}

custom_mean_for(c(10, 20, 30))