library(dslabs)
data("murders")
sort(murders$state)


index <- order(murders$total)
murders$abb[index]
i_min <- which.min(murders$abb[index])


max(murders$total)

i_max <- which.min(murders$population)
i_max

murders$population[i_max]


x <- c(31, 4, 15, 92, 65)
x
rank(x)    # returns ranks (smallest to largest)


str(murders)



murders
