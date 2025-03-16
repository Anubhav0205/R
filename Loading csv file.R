getwd()

setwd("C:/Users/ANUBHAV/OneDrive/Desktop/PROGRAMMING/R")

file_path = "./data/NYC Temperature Data.csv"
nyc_temp <- read.csv(file = file_path)

class(nyc_temp)

file_path_2 = ("C:/Users/ANUBHAV/OneDrive/Desktop/PROGRAMMING/R/data/NYC Temperature Data.csv")
nyc_temp_2 <- read.csv(file = file_path_2)

class(nyc_temp_2)