mean(c(10, 20, 30, 40))
((10 + 20 + 30 + 40) / 4)

custom_mean <- function() {
  sum_vector <- sum(c(10, 20, 30, 40))
  mean_vector <- (sum_vector / length(c(10, 20, 30, 40)))
  return(mean_vector)
}

abc <- custom_mean()