# Define a variable states to be the state names from the murders data frame
states <- murders$state

# Define a variable ranks to determine the population size ranks 
ranks <- rank(murders$population)

# Define a variable ind to store the indexes needed to order the population values
ind <- order(murders$population)


# Create a data frame my_df with the state name and its rank and ordered from least populous to most 
my_df <- data.frame(states = states[ind], ranks = sort(ind))
my_df


library(dslabs)
data(na_example)
str(na_example)


mean(na_example)



murders$state[which.max(murders$population)]

# finding morder rate
murder_rate <- murders$total/murders$population*100000
murders$state[order(murder_rate, decreasing = TRUE)]


murders$total



