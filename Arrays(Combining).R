my_array_1 <- array(1:4, dim = c(2, 2))
my_array_2 <- array(10:14, dim = c(2, 2))

rbind(my_array_1, my_array_2)
cbind(my_array_1, my_array_2)

dim(rbind(my_array_1, my_array_2))
dim(cbind(my_array_1, my_array_2))