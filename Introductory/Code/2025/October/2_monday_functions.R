
fahrenheit_to_celsius <- function(temp_F) {
  temp_C <- (temp_F -32) * 5/9
  return(temp_C)
}

# freezing point of water
fahrenheit_to_celsius(32)

# boiling water 
fahrenheit_to_celsius(212)

# Here we change the celsius to kelvin and give mulitple returns using the vector
celsius_to_kelvin <- function(temp_C) {
  temp_K <- temp_C + 273.15
  smile <- ":)"
  return(c(temp_K, smile))
}

celsius_to_kelvin(0)

# this is returning the vector from the function above
# It is stored in temp_K as a vector of length 2
fahrenheit_to_kelvin <- function(temp_F) {
  temp_C <- fahrenheit_to_celsius(temp_F)
  temp_K <- celsius_to_kelvin(temp_C)
  return(temp_K)
}

# freezing point of water (32F)
fahrenheit_to_kelvin(32)

# nesting functions
# freezing point of water in kelvin from fahrenheit 
celsius_to_kelvin(fahrenheit_to_celsius(32))


best_practice <- c("write", "programs", "for", "people", "not", "computers")
asterisk <- "*" # R reads this as a vector of length one
                #containing the string "*"
highlight(best_practice, asterisk)
# write function highlight that will add 3 *s
# to the start of the vector (or string) 
# and 3 *s to the end
highlight <- function(bp, a) {
  har <- c(a,a,a,bp,a,a,a)
  return(har)
}

highlight(best_practice, asterisk)

begin_and_end <- function(vector) {
  begin <- vector[1]
  end <- tail(vector, 1)
  return(c(begin, end))
}

begin_and_end(best_practice)

# ******** Lunch break *********

input_1 <- 20
# snake case is this_variable
# and camel case is thisVariable

mySum <- function(input_1, input_2 = 10) {
  output <- input_1 + input_2
  return(output)
}

mySum(input_1 = input_1)
# Play about with new values
# What happens when defining a value for input_2
# what happens when only providing a value for input_2?
mySum(input_1 = 3, input_2 = 4)
  
# testing notes
center <- function(data, midpoint) {
  new_data <- (data - mean(data)) + midpoint
  return(new_data)
}

z <- c(0, 0, 0)
z
center(z, 3)


dat <- read.csv(file = "data/inflammation-01.csv", header = FALSE)
centered <- center(dat[, 4], 0)
head(centered)
mean(dat[, 4])
# mean of the centered
mean(centered)

# normal standard deviation
sd(dat[, 4])
sd(centered)

(sd(dat[, 4]) - sd(centered))
all.equal(sd(dat[, 4]), sd(centered))

# new copy of the dataframe with NA value inserted
datNA <- dat
datNA[10,4] <- NA

center(datNA[, 4], 0)

center <- function(data, midpoint) {
  # return a new vector that has data cenered around a midpoint
  new_data <- (data - mean(data, na.rm = TRUE)) + midpoint
  # example: center(c(1,2,3), 0) => c(-1, 0, 1)
  return(new_data)
}

center(datNA[, 4], 0)

datNA[, 1] <- as.character(datNA[, 1])
center(datNA[, 1], 0)
datNA[, 2] <- as.factor(datNA[, 2])
center(datNA[, 2], 0)

#TASK
# make a function that creates the plots we made earlier
# argument is the filename (or path)
# run it on the first and second inflammation file
# Plots are of min and max inflammation per day

# if you forgot how plot works, run this
?plot

# ** Solution **
plot_avg_min_max <- function(filename) {
  data <- read.csv(filename, header = FALSE)
  avg_min <- apply(data, 2, min)
  avg_max <- apply(data, 2, max)
  avg_mean <- apply(data, 2, mean)
  plot_1 <- plot(avg_min)
  plot_2 <- plot(avg_max)
  plot_3 <- plot(avg_mean)
  return(c(plot_1, plot_2, plot_3))
}
# You can save to a variable for further use
# Or you can plot directly within the funciton
plot_avg_min_max("data/inflammation-01.csv")

# write a function rescale 
# input is a vector (of numbers)
# output is in the range of 0 to 1

rescale <- function(x) {
  output <- (x - min(x)) / (max(x) - min(x))
  return(output)
}

rescale(c(5,10,15,20))

# Defining defaults
dat <- read.csv("data/inflammation-01.csv", FALSE)
dat
# How to get info on the functions
?read.csv
help(read.csv)
dat <- read.csv(header=FALSE, file="data/inflammation-01.csv")
dat
# The order of arguments can be re-arranged when named
# If not named they will provide an error
read.csv(FALSE, "data/inflammation-01.csv")
# looking at defaults
file <- "data/inflammation-01.csv"
# Arguments can go across multiple lines in a function
# for neatness/readability
read.csv(file, header= TRUE, sep = ";", quote= "\"",
         dec = ",")
# Use the dec for when the decimal marker is a "," 
# "." is default for decimals in code
read.csv(file, header= TRUE, sep = ",", quote= "\"",
         dec = ".", fill = TRUE, comment.char = "")
# fill is for unequal lengths of columns, it fills out
# comment.char is for the marker of what is a comment


# TASK
# add default values for arguments
# arguments change the range, e.g. 5 - 15 instead of 0-1
rescale <- function(x, low, high) {
  output <- (x - min(x)) / (max(x) - min(x))
  output_2 <- (output  * (high - low)) +low
  return(output_2)
}

rescale(c(0,1,2), low =2, high = 3)
