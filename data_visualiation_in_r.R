# John tukey
library(ggplot2)
library(tidyverse)
library(aplot)
data(iris)
data(mpg)

plot(iris$Sepal.Width, iris$Sepal.Length)

qplot(iris$Sepal.Width, iris$Sepal.Length)

?mpg

qplot(displ, hwy, data = mpg, color = class)
qplot(displ, hwy, data = mpg, size = class)
qplot(displ, hwy, data = mpg, shape = class)
qplot(displ, hwy, data = mpg, alpha = class)

qplot(displ, hwy, data = mpg, color = cty)
qplot(displ, hwy, data = mpg, size = cty)
qplot(displ, hwy, data = mpg, shape = cty)
qplot(displ, hwy, data = mpg, alpha = cty)

# adding facetting

qplot(displ, hwy, data = mpg) + facet_grid(. ~ cyl)








qplot(displ, hwy, data = mpg) +facet_grid(drv ~ . )

qplot(displ, hwy, data = mpg) + facet_grid(drv ~ cyl)

qplot(displ, hwy, data = mpg) + facet_wrap( ~ class)

# geoms Examples
# smooth
qplot(displ, hwy, data = mpg, geom = "smooth")
# point --> scatter
qplot(displ, hwy, data = mpg, geom = "point")
# can pass a vector in geom --> scatter
qplot(displ, hwy, data = mpg, geom = c("point", "smooth"))

# boxplot --> boxplot
qplot(class, hwy, data = mpg, geom = "boxplot") 
qplot(reorder(class, hwy) , hwy, data = mpg, geom = "boxplot")
qplot(reorder(class, hwy, FUN = median) , hwy, data = mpg, geom = "boxplot") 

# dot line --> ""
qplot(class, hwy, data = mpg) 

data(diamonds)

qplot(x, z, data = diamonds )
qplot(x, data = diamonds )

qplot(cut, data = diamonds )

qplot(cut, data = diamonds, geom = "bar", color = cut)

# position adjustment

qplot(color, data = diamonds,  fill = cut, position = "stack")
qplot(color, data = diamonds, fill = cut, position = "dodge")
qplot(color, data = diamonds, fill = cut, position = "identity")
qplot(color, data = diamonds, fill = cut, position = "fill")


qplot(cty, hwy, data = mpg, geom  = "jitter")




# histogram : good for contineous data visualization
qplot(displ, data = mpg, binwidth = 1)
qplot(carat, data = diamonds, binwidth = .01)


zoom <- coord_cartesian(xlim = c(55,70))
qplot(depth, data = diamonds, binwidth = 0.2, geom = "freqpoly",fill = cut) + zoom + facet_wrap(~cut)

qplot(depth, data = diamonds, binwidth = 0.2, geom = "freqpoly",fill = cut) + zoom

qplot(depth, data = diamonds, geom = "density",color = cut) + zoom

# exercise

qplot(price, data = diamonds, geom = "density", binwidth = 500) + facet_wrap(~cut)
qplot(price, data = diamonds, geom = "density", binwidth = 500, color = cut) 

qplot(price, data = diamonds, geom = "freqpoly", color = cut) 


# visualizing big data
# bin2d
qplot(carat,price, data = diamonds, geom = "bin2d", color = cut) 
qplot(carat,price, data = diamonds, geom = "hex") 
qplot(carat,price, data = diamonds, geom = c("pint","density2d") )
qplot(carat,price, data = diamonds, geom = "smooth")
qplot(carat,price, data = diamonds, geom = "smooth", color = cut)
qplot(carat,price, data = diamonds, geom = "smooth", group = cut)
qplot(carat,price, data = diamonds, geom = "smooth", color = cut, se = FALSE)
qplot(carat,price, data = diamonds, geom = "smooth", color = cut, se = FALSE, method = lm)

qplot(carat,price, data = diamonds, color = I("blue"))














