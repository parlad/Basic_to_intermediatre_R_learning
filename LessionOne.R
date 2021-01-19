library(tidyverse)
library(dslabs)
data(murders)

murders %>% 
  ggplot2:: aes(population,total, label = abb, color = region)
  geom_label()       


  
  a <- 1
  b <- 1
  c <- -1
  
ls()


# solving the quadratic equation
(-b + sqrt(b^2 - 4*a*c))/(2*a)
(-b - sqrt(b^2 - 4*a*c))/(2*a)