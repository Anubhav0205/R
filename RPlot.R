data(mtcars)

# Scatter Plot
plot(
  mtcars$hp, mtcars$wt,
  main = "Scatter Plot of HorsePower vs Weight"
)

# Bar Plot
count_cyl = table(mtcars$cyl)

barplot(
  count_cyl,
  main = "Count of Cars by Cylinder",
  xlab = "Number of Cylinders",
  ylab = "Count of Cars",
  col = c("darkred", "green", "orange")
)

# Box Plot
boxplot(
  hp~gear,
  data = mtcars,
  main = "Boxplot of HorsePower vs Gear"
)

# Histogram
hist(
  x = mtcars$hp,
  col = "darkgreen",
  breaks = 10,
  main = "Histogram of HorsePower"
)

install.packages("ggplot2")
library(ggplot2)

ggplot(
  data = mtcars,
  aes(x = hp),
) + geom_histogram(
  fill = "salmon",
  color = "black",
  binwidth = 20,
  main = "Histogram of GGPlot"
)
