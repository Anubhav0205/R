data(mtcars)

mtcars$model <- rownames(mtcars)

?strsplit
models = strsplit(x = mtcars$model, split=' ')

models[[1]][1]
models[[2]][1]
models[[3]][1]

mtcars$brand <- sapply(X = models, FUN = '[', n = 1)
mtcars$brand <- lapply(X = models, FUN = '[', n = 1)

class(mtcars$brand)

?aggregate
hp_brands <- aggregate(
  x = mtcars$hp,
  by = list(mtcars$brand),
  FUN = mean
)

colnames(hp_brands) <- c("brand", "mean_hp")

hp_brands[order(hp_brands$mean_hp), ]
hp_brands[order(-hp_brands$mean_hp), ]
