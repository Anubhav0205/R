example_list <- list(c('a', 'b', 'c'), array(1:10, dim = c(2, 5)))

example_list[[3]] <- c(1, 2, 3)

example_list[[3]] <- NULL
example_list[3] <- NULL

example_list$3