x <- c(0,0,0,0,1,0,0)
y <- x
y



df <- data.frame(
  name = c("John", "Paul", "george", "Ringo"),
  birth = c (1990,1991, 1892, 1931),
  instrument = c("guitar", "bass", "guitar", "drum"), stringsAsFactors = FALSE
)

df[c(2,4) ,3]

df[3,3]

vec <- c(6,1,3,6,10,5)
vec[1:4]

vec[-c(1:4)]

vec[c(3,4,5)]

mat[2]

df[1,]


names(vec) <- c("a", "b", "c", "d", "e", "f")

vec["a"]


vec[c(FALSE, TRUE, FALSE, TRUE, TRUE,FALSE)]

# extract john exercise
df[1,1]

df[c(1), 1]

df[c(TRUE, FALSE, FALSE, FALSE, FALSE,FALSE),1]

df[-c(2,3,4), -c(2,3, 4)]

df[c(1), -c(2,3)]

df[1,-c(2,3,4)]

df[1, "name"]





lst <- list(c(1,2),TRUE, c("a", "b", "c"), stringsAsFactors = FALSE)
lst[1]

class(as.vector(lst[1]))





