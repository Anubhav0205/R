while_func <- function(my_vector) {
  i <- 0
  while (i <= length(my_vector)) {
    print(my_vector[i])
    i <- i + 1
  }
  print("We've reached the end")
}


while_func(c(10, 20, 59, 199, 299, 299))