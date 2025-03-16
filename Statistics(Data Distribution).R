wine_data = (
  read.csv("./data/winemag-data_first150k.csv")
)

iberian_data <- wine_data[wine_data$country %in% c('Spain', 'Portugal'), ]

library(ggplot2)

ggplot(
  data = iberian_data,
  aes(
    x = points,
    fill = country
  )
) + geom_density(alpha = 0.2)

mean(iberian_data[iberian_data$country == "Portugal", "points"])
mean(iberian_data[iberian_data$country == "Spain", "points"])

ggplot(
  data = iberian_data,
  aes(
    x = price,
    fill = country
  )
) + geom_density(alpha = 0.2)

aggregate(
  iberian_data$points,
  list(iberian_data$country),
  FUN = var
)

aggregate(
  iberian_data$points,
  list(iberian_data$country),
  FUN = sd
)