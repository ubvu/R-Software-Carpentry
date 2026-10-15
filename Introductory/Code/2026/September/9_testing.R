# In this script we will take a little look at testing in R
# Testing is important because we can write functions to avoid
# making mistakes by writing out the same process with typos
# but we can still make systematic errors
# To avoid these we test our functions!

# Let's open the data set, we want to perform an analysis on it
data <- read.csv("data/inflammation-02.csv", header=TRUE)
# We can always check the function to remind ourselves of the 
# arguments of the function and how they work
?read.csv
head(data)

# This function is written to change the mean value as well 
# as setting the value that sits at the middle of the data
center <- function(dataset, midpoint) {
  # This function takes a dataset and changes values
  # to sit around a new midpoint
  new_data <- (dataset - mean(dataset)) + midpoint
  return(new_data)
}

# We could test our new function on our dataset, but that is a lot
# of data to check at once and confirm the function works as intended
# Instead we can test our function with a smaller dataset
# test data
z <- c(0,0,0,0)
center(z, 3)
# We got back a set of 3s as expected
# If it is unclear why then walk through the function with the
# data manually step by step 
# The idea of test data is that you can work through it 
# manually or in your head without much trouble

# Let's look at another (more complex) example
y <- c(1,2,3,4)
mean(y) # 2.5
y_new <- center(y, 1) 
mean(y_new) # 1
y_new 
# look at the data, the value that would fit neatly in 
# the middle is 1

# That is it, we have tested our function
# We ran it with a small and simple dataset that we could assess
# Manually to compare the output with the expected output
# If there was an error the data is small enough that we could
# Work through the process on paper to see why it is wrong

# Our tests are working and we can now apply it to our data and
# feel comfortable it will work
# We use our new function on the 4th day of inflammation data
centered <- center(data[, 4], 0)
# Comparing the results with the original data
head(centered)
data[ , 4]


# Checking it worked
# original mean
mean(data[ , 4])
# centered mean
mean(centered) # a very small value is returned
round(mean(centered), 1) # It is essentially 0

# We only intended to change the mean and midpoint, so we check
# that the SD is unaffected
# original standard deviation
sd(data[ , 4])
# centered standard deviation
sd(centered)

# They look the same, but we should check in case R is 
# rounding the values
# difference in standard deviations before and after
sd(data[ , 4]) - sd(centered)
# If we are feeling particularly untrusting we can use 
# the all.equal function to confirm there is no rounding 
# being done
all.equal(sd(data[ , 4]), sd(centered))


# what about running our function on multiple columns?
center(data[ , c(4,6,8)], 4)

# It doesn't work, but it is the perfect moment to use the apply
# function!
# Our function is written to work with a vector or single row or column
# To run it over multiple columns we then need the apply function
# First we can take a look at the apply function for a reminder
?apply
# So we need the object (our data), the orientation (2 for columns)
# The function, and then any other arguments for the function
# Here we state the name explicitly but it could just be 4
# It is best practice to include the argument name for clarity
apply(data[ , c(4,6,8)], 2, center, midpoint = 4)

