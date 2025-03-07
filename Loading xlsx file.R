getwd()

file_path = "./Data/US_Crime_DataSet.xlsx"

install.packages("readxl")
library(readxl)

us_crime_data <- read_excel(path = file_path)
class(us_crime_data)

install.packages("xlsx")
library(xlsx)

us_crime_data_2 <- read_xlsx(path = file_path, sheetIndex = 1)
class(us_crime_data_2)