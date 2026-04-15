# Errors

# A Natural part of programming is finding and creating errors
# We will take a short look at how you can deal with them

# Read in our dataset to work with
dat <- read.csv(file="data/inflammation-01.csv", header= FALSE)

# We will also make a copy of the data with one single NA 
# (missing value) in it
datNA <- dat
datNA[10, 4] <- NA

# We can then redefine the center function to use here
center <- function(data, midpoint) {
  new_data <- (data - mean(data)) + midpoint
  return(new_data)
}

# What happens to our beautiful function when we run it on 
# the data?
center(dat[ , 4], 0)
# This returns all NAs
center(datNA[ , 4], 0)

# Thankfully we can rewrite the center function to ignore NAs
# The error comes from the mean function, so we can make use of
# its na.rm (NA remove) argument and set it to TRUE
# It will now remove NAs when calculating the mean
center <- function(data, midpoint) {
  new_data <- (data - mean(data, na.rm=TRUE)) + midpoint
  return(new_data)
}

center(datNA[ , 4], 0)
# it works!

# What happens when we introduce some factors and strings?
# "five" and 5 might be the same to us, but the mean function 
# can't work with strings
# setting col1 to factors and col2 to strings (characters)
datNA[ ,1] <- as.factor(datNA[ , 1])
datNA[ ,2] <- as.character(datNA[ ,2])

# Both break, but to different degrees
center(datNA[ ,1], 0)
center(datNA[ , 2], 0)
# So it can only be numeric type to work

# We can help here by adding a warning for any users of this 
# function. It will display when one of the elements of the data 
# is NOT numeric
center <- function(data, midpoint) {
  if(!is.numeric(data)) {
    warning("WARNING: all values in your data 
            must be either numeric or NA!")
  }
  new_data <- (data - mean(data, na.rm=TRUE)) + midpoint
  return(new_data)
}

center(datNA[ ,2], 0)

# Reminder that we can get info about a function with the 
# "?" symbol
?nchar
# it provides a lot of info, that we can;t easily add to our own
# functions, but we can add some comments for people to read

# Including an example of how to use it and the output can help
# others (or you after the weekend) if they get errors
center <- function(data, midpoint) {
  # return a new vector containing the original data
  # centered around the midpoint (it changes the mean)
  # Example: center(c(1,2,3), 0) => c(-1 ,0, 1)
  if(!is.numeric(data)) {
    warning("WARNING: all values in your data 
            must be either numeric or NA!")
  }
  new_data <- (data - mean(data, na.rm=TRUE))
  return(new_data)
}


