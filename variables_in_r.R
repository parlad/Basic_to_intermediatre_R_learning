class(ls)



a <- 2
class(a)

?data.frame

library(dslabs)
data("murders")
class(data)
str(murders)


head(murders)

murders$population
names(murders)
length(murders$population)


# char vectors
"a"



murders$region
class(murders$region)



levels(murders$region)








a <- 2
b <- -1
c <- -4

# solving the quadratic equation
(-b + sqrt(b^2 - 4*a*c))/(2*a)
(-b - sqrt(b^2 - 4*a*c))/(2*a)





log(1024, base = 4)








data(movielens)
str(movielens)

class(movielens$title)
class(movielens$genres)



nlevels(movielens$genres)
