countries_data <- array(c(200, 200, 300, 340, 230, 120, 540, 400),
                        dim = c(2, 2, 2),
                        dimnames = list(c('Portugal', 'UK'), c('Population', 'GDP'),
                                        c('2018', '2019')))

countries_data['Portugal', 'Population', '2019']

countries_data['Portugal', 'Population', c('2018', '2019')]

countries_data['France', 'Poupulation', c('2018', '2019')]

dimnames(countries_data)
dimnames(countries_data)[[1]] <- c('Portugal', 'Spain')

nrow(countries_data)
ncol(countries_data)

countries_data
countries_data[ , -c(2), ]