getwd()

file_path = "./Data/FBI Crime Data.xls"

install.packages("readxl")
library(readxl)

us_crime_data <- read_excel(path = file_path)
class(us_crime_data)

install.packages("xlsx")
library(xlsx)

us_crime_data_2 <- read_xlsx("./data/FBI Crime Data.xls",
                             header = TRUE
                             sheetName = '16tbl01')
class(us_crime_data_2)