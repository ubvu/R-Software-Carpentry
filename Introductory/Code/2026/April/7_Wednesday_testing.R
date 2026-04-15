# Testing functions

# We can write functions to avoid making mistakes when re-writing
# the same analysis or calculation over and over, but if we
# make a mistake in the function it is a systematic error
# To help with this we test our functions

# Let's make a function to shift the center point to a chosen 
# midpoint and thus the mean.
center <- function(data, midpoint) {
  new_data <- (data - mean(data)) + midpoint
  return(new_data)
}

# To check that it works we can use a very simple test dataset
# If it is simple and small we can manually check what the 
# expected result should be and compare it to the actual result
# If you didn't get back what you wanted either the function
# has a mistake or you might have misunderstood what is happening 
# inside
# test dataset
z <- c(0,0,0,0)
center(z, 3)

# it works! let's test it on our data
dat <- read.csv(file = "data/inflammation-01.csv", 
                header = FALSE)
centered <- center(dat[ ,4], 0)
# We can check the first 6 rows like this
head(centered)

# Ok it ran, but did it actually change anything? 
# We can check if it did
# original mean
mean(dat[ ,4])
# centered mean
mean(centered)

# It shouldn't have changed the standard deviation, but we should
# check to make sure
# original standard deviation
sd(dat[ ,4])
# centered standard deviation
sd(centered)
# hmm, they look the same, but maybe there is a small decimal 
# difference

# difference in standard deviation before and after centering
sd(dat[ ,4]) - sd(centered)
# TO check explicitly that theses are indeed identical
all.equal(sd(dat[ ,4]), sd(centered))

# What function might you write for a project and how would you 
# test it?

# e.g. I want to combine all salt values in my dataset to 
# calculate the combined weight
# I can check this by creating a test dataset where all the salt
# values are 1 and it has 3 rows so I can also calculate by
# hand what the output should be

# Checking if a value is a string or not
str1 <- ""
is.character(str1)
# This can be done with other types too
f <- FALSE
is.logical(f) # This one is a little more confusing 
# It is true that the value is logical, despite the value itself
# being FALSE

# Example of a badly written function
# none of the arguments are used and the returned value is never
# defined
test_func <- function(ff, t=5) {
  l = 17
  return(m)
}

test_func(4)

# This will actually run
test_func <- function(ff, t=5) {
  l = 17
  m = l-ff+t
  return(m)
}

test_func(4)
