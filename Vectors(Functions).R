melons <- c(1.2, 1.4, 2.4, 3.4)

mean_melons <- mean(melons)

length(melons)

median(melons)

sd(melons)

reverse_melons <- sort(melons, decreasing = TRUE)

new_melons <- c(1.2, 1.4, 2.4, 3.4, NA)
sum(new_melons, na.rm = TRUE)

help(sum)

new_melons <- c(1.2, 1.4, 2.4, 3.4, NaN)
sum(new_melons)
sum(new_melons, na.rm = TRUE)

new_melons <- c(1.2, 1.4, 2.4, 3.4, 1 / 0)
sum(new_melons, na.rm = TRUE) %>% 