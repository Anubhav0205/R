custom_mean_if <- function(my_vector) {
  
  if (class(my_vector) != 'numeric') {
    print("Pass a numeric vector")
  } else {
    sum_vector <- 0
    
    for (element in my_vector) {
      sum_vector <- sum_vector + element
    }
    
    mean_vector <- sum_vector / length(my_vector)
    return(mean_vector)
  }
}

custom_mean_if(c(10, 20, "30"))