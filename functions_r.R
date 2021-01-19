avg <- function(x){
  s <- sum(x)
  n <- length(x)
  s/n
}

x <- 1:100
avg(x)

identical(avg(x), mean(x))

s <- 3
avg(1:10)
s

# the general form of a function
#my_function <- function(VARIABLE_NAME){
 # perform operations on VARIABLE_NAME and calculate VALUE
  #VALUE
#}

# functions can have multiple arguments as well as default values
avg <- function(x, arithmetic = TRUE){
  n <- length(x)
  ifelse(arithmetic, sum(x)/n, prod(x)^(1/n))
}


# creating a function that computes the sum of integers 1 through n
compute_s_n <- function(n){
  x <- 1:n
  sum(x)
}

# a very simple for-loop
for(i in 1:5){
  print(i)
}

# a for-loop for our summation
m <- 25
s_n <- vector(length = m) # create an empty vector
for(n in 1:m){
  s_n[n] <- compute_s_n(n)
}

# creating a plot for our summation function
n <- 1:m
plot(n, s_n)

# a table of values comparing our function to the summation formula
head(data.frame(s_n = s_n, formula = n*(n+1)/2))

# overlaying our function with the summation formula
plot(n, s_n)
lines(n, n*(n+1)/2)



# apply family

m <- cbind(1, 1:7) # the '1' (= shorter vector) is recycled
m
m <- cbind(m, 8:14)[, c(1, 3, 2)] # insert a column
m
cbind(1:7, diag(3)) # vector is subset -> warning



Age<-c(56,34,67,33,25,28)
Weight<-c(78,67,56,44,56,89)
Height<-c(165, 171,167,167,166,181)

BMI_df<-data.frame(Age,Weight,Height)
BMI_df

#apply function
apply(BMI_df, 1, sum)
apply(BMI_df, 2, sum)

#lapply function
# the below lapply function divides the values in the dataframe by 2 and the
#output will be in form of list
lapply(BMI_df, function(BMI_df) BMI_df/2)
lapply(BMI_df, mean)


#sapply function
#the above Sapply function divides the values in the dataframe by 2 and the
#output will be in form of vector

sapply(BMI_df, function(BMI_df) BMI_df/2)
sapply(BMI_df, mean)

# sapply function in R
random <- c("this", "is", "random")
sapply(random,nchar)

#mapply function in R:
#mapply is a multivariate version of sapply. mapply applies FUN to
# the first elements of each (…) argument, the second elements, the third elements, and so on.

# mapply function in R
mapply(sum, 1:4, 1:4, 1:4)
1:4

# mapply function in R
mapply(rep,1:4,1:6)


#tapply function
# For when you want to apply a function to subsets of a vector and the 
#subsets are defined by some other vector, usually a factor.

attach(iris)
head(iris)
tapply(iris$Sepal.Length, Species, mean)

# rapply function in R
# rapply function in R is nothing but recursive apply, as the name suggests it 
# is used to apply a function to all elements of a list recursively.
x=list(1,2,3,4)
rapply(x,function(x){x^2},class=c("numeric"))


#vapply function in R:
#  vapply function in R is similar to sapply, but has a pre-specified type of return 
# value, so it can be safer (and sometimes faster) to use.


# vapply function in R
vapply(1:5, sqrt, 1i)


# reduce function

v1 <- c("geneA","geneB")
v2 <- c("geneA","geneC")
v3 <- c("geneD","geneE")
v4 <- c("geneA","geneE")
v5 <- c("geneB","geneC")
vlist <- list(v1,v2,v3,v4,v5)
addmargins(table(gene=unlist(vlist), vec=rep(paste0("v",1:5),times=sapply(vlist,length))),2,list(Count=function(x) sum(x[x>0])))

#reduce function example 2
Reduce(`*`, x=list(5,4,3,2), accumulate=TRUE)



i2 <- seq(0,100,by=2)
i3 <- seq(0,100,by=3)
i5 <- seq(0,100,by=5)
Reduce(intersect, x=list(i2,i3,i5), accumulate=TRUE)








