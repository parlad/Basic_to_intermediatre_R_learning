# Access population from the dataset and store it in pop
pop <- murders$population

# Use the command order to find the vector of indexes that order pop and store in object ord
ord <- order(pop)

# Find the index number of the entry with the smallest population size
i_min <- which.min(pop)
i_min



temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp)
city_temps



rank(murders$state)