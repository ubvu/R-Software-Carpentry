# As an example we copy the function from the challenge from yesterday

analyze <- function(filename) {
  # Plots the average, min, and max inflammation over time.
  # Input is character string of a csv file.
  dat <- read.csv(file = filename, header = FALSE)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation)
}

file_names <- list.files( path = "data",
                          pattern = "inflammation", 
                          full.names = TRUE)

# We have used both for loops and apply
# Typically apply is a lot faster, it runs the function in a 'vectorised' form

# A comparison
# two large vectors
a <- 1:100000000
b <- 1:100000000
# an empty vector to store results
results <- numeric( length = length(a))

for (i in 1:length(a)) {
  results[i] <- a[i] + b[i]
}
results
# Quite slow, right?
#the faster option is 

results <- a + b 
results


# one final example to show how apply can also be neater and shorter
# we apply the mean to the rows of dat
mean_per_row <- apply(dat, 1, mean)

#versus
mean_per_row_2 <- numeric()
for (i in 1:length(dat)) {
  mean_per_row_2[i] <- mean(dat[i, ])
}

