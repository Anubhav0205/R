my_vector <- 1:4

my_array <- array(data = my_vector, dim = c(2, 2))
my_array[1, ]
my_array[1, 2]

class(my_array)
typeof(my_array)

dim(my_array)