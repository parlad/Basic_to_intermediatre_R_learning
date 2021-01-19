library(ggplot2)
library(tidyverse)
library(aplot)

?diamonds
plot(diamonds$x,diamonds$y,data=diamonds)

# logical test
str(diamonds)

x_zeros <- diamonds$x == 0
diamonds[x_zeros,]

diamonds[diamonds$x == 0, ]

na_all <- is.na(diamonds) == TRUE  
summary(na_all)

summary(diamonds$x)
diamonds[x_zeros,]
diamonds$x[x_zeros]

diamonds$x[x_zeros] <- NA
diamonds[x_zeros,]
summary(diamonds$x)
