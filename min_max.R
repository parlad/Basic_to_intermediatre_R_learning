
name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)/60
time

my_df <- data.frame(name = name, diste = time )
my_df

my_df <- data.frame(name = name, diste =distance/time )
my_df
