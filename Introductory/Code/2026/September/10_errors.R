# Copy of the center function
center <- function(dataset, midpoint) {
  # This function takes a dataset and changes values
  # to sit around a new midpoint
  new_data <- (dataset - mean(dataset)) + midpoint
  return(new_data)
}

# We make a copy of our data set
datNA <- data
# And introduce a missing value (NA) to break our function
datNA[10, 4] <- NA

# Running the center function on our adjusted dataset
center(datNA[, 4], 0)

# Thankyfully the mean function has a way to deal with NAs
# The argument na.rm can be set to TRUE and it will then remove
# the NAs temporarily while it calculates the mean
# After the calculation it will return them
center <- function(dataset, midpoint) {
  # This function takes a dataset and changes values
  # to sit around a new midpoint
  new_data <- (dataset - mean(dataset, na.rm=TRUE)) + midpoint
  return(new_data)
}
# Reading the documentation for the mean function to see
# how it works and what arguments are available
?mean

# Testing our updated function
center(datNA[, 4], 0)

# LEt's break our data some more to put our function to the test
datNA[ , 1] <- as.factor(datNA[ , 1])
datNA[ , 2] <- as.character(datNA[ , 2])

# There are two different sets of errors and warnings we get
center(datNA[, 1], 0)
center(datNA[, 2], 0)

# Dealing with incorrect data types
center <- function(dataset, midpoint) {
  # This function takes a dataset and changes values
  # to sit around a new midpoint
  # the exclamation mark stands for NOT, so this will return
  # TRUE if the object dataset is not numeric
  if(!is.numeric(dataset)){
    warning("WARNING: All values in your data must be either numeric or NA")
  }
  new_data <- (dataset - mean(dataset)) + midpoint
  return(new_data)
}

# Taking our new warning message for a test drive
center(datNA[, 2], 0)

# Adding another comment for further context
# IT is not quite as nice as having ful documentation like
# When we use the help() function or ?, but it is still useful
# for us or our colleagues
center <- function(dataset, midpoint) {
  # This function takes a dataset and changes values
  # to sit around a new midpoint
  if(!is.numeric(dataset)){
    warning("WARNING: All values in your data must be either numeric or NA")
  }
  new_data <- (dataset - mean(dataset)) + midpoint
  return(new_data) # return a new vector containing the original data 
  #centered around the mid point
}

# Can you write a function that will read a dataset and produce
# a graph of the daily mean, min, and max such that
# analyse("data/inflammation-01.csv") makes 3 plots

# So we want a sungle function that will open the data, calculate
# The daily mean, min, and max of the dataset and then plot all 3
analyse <- function(filename) {
  dataset <- read.csv(filename, header=FALSE)
  avg_daily <- apply(dataset, 2, mean)
  graph_1 <- plot(avg_daily)
  max_daily <- apply(dataset, 2, max)
  graph_2 <- plot(max_daily)
  min_daily <- apply(dataset, 2, min)
  graph_3 <- plot(min_daily)
  return(list(avg_daily, min_daily, max_daily))
}

# The function is a tricky one, but it uses parts of what we 
# learned in the first session
# Look back at when we calculated the max, min, and mean and you
# can re-use it here alongside opening the data

# If you are having trouble writing a function (or script) the
# best first steps are to write out what you need to do in 5 bullet
# points, e.g.
# 1. open data
# 2. clean data
# 3. analyse data
# 4. plot data
# 5. save plots
# After this you can start to write out the smaller steps needed
# 1.1 read the csv
# 2.1 remove NA
# 2.2 change age column to numeric
# 2.3 Filter out under 18s
# etc
# Next write pseudo code (not real code, an approximation)
# After that you can start writing out the real code


# Multiple values can be returned at once, but need to be in an 
# indexable object, a vector is typical, but when the output is
# vectors they combine into one object, then you can use a list
# instead and access each each vector as its own object

analysis <- analyse("data/inflammation-03.csv")
analysis[1]


# Write a function called rescale that takes a vector as input
# and returns a vector where the values are now scaled to lie
# between 0 and 1, so if L is the lowest and H the highest in the
# original vector the replacement value, v, should be (v-L) / (H-L)
# Be sure to document the function with comments

# Test that your rescale function works by using min, max, 
# and a plot

rescale <- function(vector) {
  # the function takes in a vector and calculates the min and max
  # before it then rescales all the values
  min_val <- min(vector)
  max_val <- max(vector)
  rescaled_vec <- (vector - min_val)/(max_val - min_val)
  return(rescaled_vec)
}


rescale(c(1,1,24,5,6,7,8))
# It works! 

# NOTE: Be aware that this function uses 'vector' as an argument
# vector already means something to R, setting variables with 
# names that are already in use by R can cause issues
# for instance, vector <- list(1,2,4,8) could mean that you 
# can no longer use the vector function

       