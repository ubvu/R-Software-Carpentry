# Default values
# We can use positional arguments in any function instead of
# outright naming the arguments
dat <- read.csv("data/inflammation-01.csv", FALSE)
# Let's check the help page for read.csv
?read.csv
# You can see that it has a lot of arguments and all but one have
# a default argument. It means we can just provide the file
# location and the rest is already decided and R will use those
# values

# changing the argument order is possible when using their names
dat <- read.csv(header=FALSE, file="data/inflammation-01.csv")
# Use positional arguments before named, it is clearer


# We have used the midpoint of zero so often we should add it as
# the default value for it, we can do this by using "= 0" after 
# the argument name
center <- function(data, midpoint = 0) {
  # return a new vector containing the original data
  # centered around the midpoint (it changes the mean)
  # midpoint is 0 be default
  # Example: center(c(1,2,3), 0) => c(-1 ,0, 1)
  if(!is.numeric(data)) {
    warning("WARNING: all values in your data 
            must be either numeric or NA!")
  }
  new_data <- (data - mean(data, na.rm=TRUE)) +midpoint
  return(new_data)
}

# let's take our new default value for a spin!
test_data <- c(1,1,1,1)
# adding a midpoint
center(test_data, midpoint=3)
# leaving it to the default
center(test_data)

# slightly more complex function with 3 defaults
display <- function(a=1, b=2, c=3) {
  result <- c(a,b,c)
  # This names each element of the vector
  names(result) <- c("a", "b", "c")
  return(result)
}

# no arguments
display()
# one argument
display(55)
# two
display(55, 66)
# three
display(a=55, b=66, c=77)
# naming the variable to change the "c" value
display(c=77)

# Example function to add defaults to

ex_func <- function(message, colour, value_1, value_2) {
  print(c(message, colour))
  return(value_1 - value_2)
}
# Can you add 2 default values to any two arguments in the
# ex_func?

ex_func <- function(message, colour="yellow", value_1=21, value_2) {
  print(c(message, colour))
  return(value_1 - value_2)
}