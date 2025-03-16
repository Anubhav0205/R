dates <- as.Date(c("2024-12-31", "2025-01-01"))

class(dates)
typeof(dates)

as.numeric(dates)

as.Date(c("31Dec2024"), format = '%d%b%Y')
example_date <- as.Date(c("01/01/2025"), format = '%d/%m/%Y')

format(example_date, "%m")
days <- as.numeric(format(dates, "%d"))