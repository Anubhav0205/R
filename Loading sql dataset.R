install.packages("RODBC")
library(RODBC)

cursor = odbcConnect(dsn = " ", uid = " ")

sakila_film <- sqlQuery(
  channel = cursor,
  query = "select * from
  sakila.film"
)

class(sakila_film)

class(cursor)