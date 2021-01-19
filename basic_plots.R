population_in_millions <- murders$total/murders$population * 100000
total_gun_murder <- murders$total

plot(population_in_millions, total_gun_murder)

hist(murders$rate)

murders$state[which.max(murders$rate)]

boxplot(rate ~ region, data = murders)


# Load the datasets and define some variables
library(dslabs)
data(murders)

population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total

plot(population_in_millions, total_gun_murders)

# Transform population using the log10 transformation and save to object log10_population
log10_population <- log(murders$population, base = 10)

# Transform total gun murders using log10 transformation and save to object log10_total_gun_murders
log10_total_gun_murders <- log(murders$total, base = 10)

# Create a scatterplot with the log scale transformed population and murders 
plot(log10_population, log10_total_gun_murders)


# Store the population in millions and save to population_in_millions 
population_in_millions <- murders$population/10^6


# Create a histogram of this variable
hist(population_in_millions)










