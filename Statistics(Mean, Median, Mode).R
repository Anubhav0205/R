wine_data = (
  read.csv("./data/winemag-data_first150k.csv")
)

portuguese_wines = (
  wine_data[wine_data$country == "Portugal",]
)

library(ggplot2)

ggplot(
  portuguese_wines,
  aes(x = points)
) + geom_density()


mean(portuguese_wines$points)
median(portuguese_wines$points)

median_points = aggregate(
  wine_data$points,
  list(wine_data$country),
  FUN = median
)

median_points[order(median_points$x), ]

ggplot(
  wine_data[wine_data$country == "Germany", ],
  aes(x = points)
) + geom_density()

wines_per_point = as.data.frame(table(portuguese_wines$points))

mode = as.character(wines_per_point[order(-wines_per_point$Freq), 'Var1'][1])
mode
