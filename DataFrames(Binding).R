countries_data <- data.frame(
  country = c("Portugal", "France", "UK"), 
  population = c(10280000, 66990000, 66650000), 
  EU = c(TRUE, TRUE, FALSE),
  stringsAsFactors = FALSE
)

spain_data = data.frame(
  country = c("Spain"),
  population = c(46754775),
  EU = c(TRUE),
  stringsAsFactors = FALSE
)

countries_data = rbind(countries_data, spain_data)


capitals <- c("Lisbon", "Paris", "London", "Madrid")

countries_data = cbind(countries_data, capitals)

countries_data[,"capitals"]

str(countries_data)
