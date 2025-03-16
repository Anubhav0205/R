data(mtcars)

mtcars$brand <- sapply (
  strsplit(rownames(mtcars), " "),
  FUN = "[",
  n = 1
)

mtcars$car_model <- rownames(mtcars)

brands_origin = data.frame (
  brand = c("Mazda", "Toyota", "Fiat", "Volvo", "Skoda"),
  country = c("Japan", "Japan", "Italy", "Sweden", "Czech Republic")
)

mtcars_origin_inner <- merge(x = mtcars, y = brands_origin, by = "brand")

mtcars_origin_left <- merge(x = mtcars, y = brands_origin, by = "brand", all.x = TRUE)
mtcars_origin_right <- merge(x = mtcars, y = brands_origin, by = "brand", all.y = TRUE)

mtcars_origin_full <- merge(x = mtcars, y = brands_origin, by = "brand", all = TRUE)
