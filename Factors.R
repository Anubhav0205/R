labels <- c("Asia", "Oceania", "Antarctica", "Europe", "Africa", "Europe", "North America", "south America", "Africa")

factor_labels <- factor(labels)
factor_labels

typeof(factor_labels)

as.integer(factor_labels)

nlevels(factor_labels)

altitude_levels <- c("High", "Low", "Medium", "Low", "High", "Low")

altitude_factor <- factor(altitude_levels, order = TRUE, levels  <- c("Low","Medium", "High"))

as.integer(altitude_factor)
