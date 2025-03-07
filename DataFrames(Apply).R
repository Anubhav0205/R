data(iris)

?apply
apply(X = iris, MARGIN = 2, FUN = max)
apply(X = iris[, 1:4], MARGIN = 2, FUN = mean)

?lapply
lapply(X = iris[, 1:4], FUN = mean)

sum(iris[,1])
sum(iris[,2])
sum(iris[,3])
sum(iris[,4])

?sapply
sapply(X = iris[, 1:4], FUN = max)
lapply(X = iris[, 1:4], FUN = mean)