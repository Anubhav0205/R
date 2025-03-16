wine_data = (
  read.csv("./data/winemag-data_first150k.csv")
)

windsor_treaty <- wine_data[wine_data$country %in% c('Portugal', 'England'), ]

library(ggplot2)

ggplot(
  windsor_treaty,
  aes(
    x = points,
    fill = country
  )
) + geom_density(alpha = 0.2)

ggplot(
  windsor_treaty,
  aes(
    x = country,
    y = points,
    color = country
  )
) + geom_boxplot()