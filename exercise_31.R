library(dslabs)
data(heights)
options(digits = 3)    # report 3 significant digits for all answers
head(heights)
library(dplyr)

mean_height <- mean(heights$height[ heights$sex == "Female"])
mean_height

ind <- (heights$height > mean_height & heights$sex == "Female")
length(heights$height[ind])

mean_height <- mean(heights$sex == "Female")
mean_height



#example
index <- match(c("New York", "Florida", "Texas"), murders$state)
index

murders$state[index]
murder_rate[index]

#example

min_height <- which.min(heights$height)
heights$height[min_height]

max_height <- which.max(heights$height)
heights$height[max_height]

index <- match(heights$height[min_height], heights$height)
index

min_height <- which.min(heights$height)
heights$sex[min_height]

index <- match(heights$height[min_height], heights$height)
index

x <- heights$height[min_height:max_height]
x # 16 length

sum(!x %in% heights$height[x])


heights2 <- mutate(heights, ht_cm = heights$height * 2.54 )
head(heights2)
fm_index <- heights2$sex == "Female"
fm_index

mean(heights2$ht_cm[fm_index])




library(dslabs)
data(olive)
head(olive)


plot(olive$palmitic ~ olive$palmitoleic)


hist(olive$eicosenoic)

boxplot(olive$palmitic ~ region, data = olive)




x <- 50:82
length(x) # 33

sum(!x %in% heights$height)

heights$height[x]






