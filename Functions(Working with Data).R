library(ggplot2)

path = "./data/walmart_data.csv"

walmart_data = read.csv(path)

plot_store_department <- function(store_nb, dept_nb, colorarg) {
  
  walmart_filter <- walmart_data[
    walmart_data$Store == store_nb
    & walmart_data$Dept == dept_nb,
  ]
  
  ggplot(
    data = walmart_filter,
    aes(x = as.Date(Date),
        y = Weekly_Sales,
        group = 1)
  ) + geom_line(color = colorarg) + 
    geom_point(color = colorarg) + 
    theme(axis.text.x = element_text(angle = 90, vjust = 0.5))
  
}

plot_store_department(1, 1, 'blue')

plot_grouped_dept <- function(store, dept) {
  
  filtered_table = (
    walmart_data[
      (walmart_data$Store == store)
      & (walmart_data$Dept %in% dept), 
    ]
  )
  ggplot(
    filtered_table,
    aes(x = as.Date(Date),
        y = Weekly_Sales,
        group = Dept,
        color = Dept)
  ) + geom_line() + 
    geom_point() + 
    theme(axis.text.x = element_text(angle = 90, vjust = 0.5))
  
}

plot_grouped_dept(10, c(1,2,3,4))
