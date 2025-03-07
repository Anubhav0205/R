data(mtcars)

mtcars[mtcars$cyl == 4, ]

class(mtcars[, "cyl"])

class(mtcars[, "cyl"]) == class(mtcars$cyl)

mtcars$cyl == 4
mtcars$cyl != 4

mtcars[mtcars$cyl == 4 | mtcars$cyl == 6, ]
nrow(mtcars[mtcars$cyl == 4 | mtcars$gear== 3, ])

mtcars[mtcars$cyl == 4 & mtcars$gear== 3, ]

cyl_list = c(4, 6, 8)
mtcars[mtcars$cyl %in% cyl_list,]

mtcars[mtcars$hp > 100 & mtcars$hp <= 110, ]