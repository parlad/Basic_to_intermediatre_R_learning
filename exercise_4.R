x <- c(1,2,-3,4)

if(all(x>0)){
  print("All Positives")
} else{
  print("Not All Positives")
}


x <- c(FALSE, TRUE)
all(x)

any(x)

any(!x)

all(!x)

x <- c(TRUE, TRUE)
all(x)

any(x)

any(!x)

all(!x)


murders$state
nchar(murders$state)
char_len <- nchar(murders$state)
head(char_len)

x <- c(2, 3, -999, 1, 4, 5, -999, 3, 2, 9)
ifelse(x == -999, NA, x)

data(murders)
new_names <- ifelse(nchar(murders$state) <= 8 , murders$state , murders$abb )
new_names
murders$state


# Create function called `sum_n`
sum_n <- function(n){
  sum(1:n)
}

# Use the function to determine the sum of integers from 1 to 5000
sum_n(5000)


log_plot <- function(x, y){
  plot(log10(x), log10(y))
}

log_plot( 12, 31)




x <- 8
my_func <- function(y){
  x <- 9
  print(x)
  y + x
}
my_func(x)
print(x)


# Write a function compute_s_n with argument n that for any given n computes the sum of 
# 1 + 2^2 + ...+ n^2
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Report the value of the sum when n=10
compute_s_n(100)

results <- vector("numeric", 10)
n <- 10
for(i in 1:n){
  x <- 1:i
  results[i] <- sum(x)
}

results[7]


# Define the function
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Define the vector of n
n <- 1:25

# Define the vector to store data
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}

#  Create the plot 


identical()


# Define the vector of n
n <- 1:25


# Define the function
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Define the vector to store data
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}

sum_f <- function(n){
  sum(n*(n+1)*(2*n+1)/6)
}

s_n
sum_f

identical(s_n[2], sum_f(2))




























