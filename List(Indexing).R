multi_object <- list(
  "Vector" = c(1, 2, 3), 
  "Array" = array(1:4, dim = c(2, 2)), 
  "Logical" = TRUE
)

multi_object[[1]][1]

multi_object[[2]][2, 2]

multi_object[c(1, 2)]

multi_object[["Vector"]]

multi_object$Vector[1]
