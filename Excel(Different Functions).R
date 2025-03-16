library(readxl)

crime_data = read_excel("./data/FBI Crime Data.xls")

colnames(crime_data) = crime_data[3, ]

crime_data["converted_index"] = (
  sapply(crime_data[, 1], as.numeric)
)

crime_data_filter = (
  crime_data[!is.na(crime_data["converted_index"]), ]
)

years = substr(crime_data_filter$Year, 1, 4)

remove_col = c("Year", "converted_index")

crime_data_filter = (
  crime_data_filter[, !colnames(crime_data_filter) %in% remove_col]
)

summary(crime_data_filter)

numeric_crime_data = sapply(crime_data_filter, as.numeric)
summary(numeric_crime_data)

rownames(numeric_crime_data) = years

numeric_crime_data['2015', 'Robbery']

rate_crime_data = (
  numeric_crime_data[, grepl('rate', colnames(numeric_crime_data))]
)

nominal_crime_data = (
  numeric_crime_data[, !grepl('rate', colnames(numeric_crime_data))]
)

colnames(nominal_crime_data) <- c(
  'Population',
  'Violent Crime',
  'Murder',
  'Robery',
  'Aggravated Assault',
  'Property Crime',
  'Burglary',
  'Theft',
  'Motor Theft'
)

means_crime = as.data.frame(
  sapply(
    as.data.frame(nominal_crime_data),
    mean
  )
)

colnames(means_crime) = 'mean_value'

means_crime[2 : nrow(means_crime), ]

meana_crime = tail(means_crime, -1)

ggplot(
  data = means_crime / 1000000,
  aes(
    x = rownames(means_crime),
    y = mean_value
  )
) + geom_bar(
  stat = 'identity',
  fill = 'darkred'
  ) + theme(
    axis.text.x = element_text(
      angle = 90,
      vjust = 0.5,
      hjust = 1
    )
  )
