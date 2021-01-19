murder_rate <- murders$total/murders$population*100000
murder_rate


index <- murder_rate <= 0.71
index

murders$state[index]

# logical vector


west <- murders$region == "West"
safe <- murder_rate <=1
murders$state[west & safe]


# which
index <-  which(murders$state == "Massachusetts")
index

murder_rate[index]

# match
index <- match(c("New York", "Florida", "Texas"), murders$state)
index

murders$state[index]
murder_rate[index]


#in operator
x <- c("a", "b", "c", "d", "e")

y = c("a", "d", "f")

y %in% x



# to see if Boston, Dakota, and Washington are states
c("Boston", "Dakota", "Washington") %in% murders$state



small <- murders$population < 1000000
murders$state[small]


str(murders)

abbs <- c("MA", "ME", "MI", "MO", "MU")
abbs %in%murders$abb



