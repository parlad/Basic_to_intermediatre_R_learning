a <-2
if (a!=0) {
  print(1/a)
} else {
  print("NO reciprocal for 0")
}

library(dslabs)
data(murders)
murder_rate <- murders$total/murders$population*100000
murder_rate

ind <- which.min(murder_rate)

if (murder_rate[ind] < 0.5) {
  print(murders$state[ind])
} else {
  print("nort found")
}

ifelse(murder_rate[ind] < 0.5, murders$state[ind], print("No state found"))

data(na_example)
sum(is.na(na_example))

no_na <- ifelse(is.na(na_example), 0 , na_example)
sum(is.na(no_na))

# any 

z <- c(TRUE, FALSE, FALSE)
any(z)


# all function
z <- c(TRUE, FALSE, FALSE)
all(z)


