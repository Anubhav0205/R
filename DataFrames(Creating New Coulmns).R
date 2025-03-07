data(mtcars)

mtcars$hp_wt = mtcars$hp / mtcars$wt
mtcars[, 'hp_wt'] <- mtcars[, 'hp'] / mtcars[, 'wt']

mtcars$hp_squared <- mtcars$hp ** 2

mtcars$model <- rownames(mtcars)
