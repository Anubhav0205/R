install.packages("RODBC")
library(RODBC)

cursor = odbcConnect(dsn = "mysqlconn", uid = "root")

sakila_film <- sqlQuery(
  channel = cursor,
  query = "select * from
  sakila.film"
)

class(sakila_film)

class(cursor)