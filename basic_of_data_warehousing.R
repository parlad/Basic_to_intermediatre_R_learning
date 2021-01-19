# this package preforms the must basic data manipulaton operation
library(dplyr)

#mutate
murders <- mutate(murders, rate = murders$total/murders$population*100000)
head(murders)

# filter

filter <- filter(murders, rate <= 0.71)
head(filter)

#select
new_table <- select(murders, state, region, rate)
filter(new_table, rate <= 0.71)

murders %>% select(state, region, rate) %>% filter(rate <= 0.71)


murders$region

filter(murders, region %in% c('Northeast', 'West') & rate < 1) %>%  select(state, rate, rank)

# Load library
library(dplyr)

## Define the rate column
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))
murders

# show the result and only include the state, rate, and rank columns, all in one line, in that order
filter(murders, region %in% c('Northeast', 'West') & rate < 1) %>%  select(state, rate, rank)


