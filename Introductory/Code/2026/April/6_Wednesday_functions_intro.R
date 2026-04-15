# Functions

# My cousins live in New Jersey so when they tell me about the
# weather it is in fahrenheit
# Thankfully we can convert that to celsius in R
temperature <- 100
temp_in_cel <- (temperature - 32) * (5/9)
# That was a hot day, the next day was a little cooler
temperature <- 96
temp_in_cel <- (temperature - 32) * (5/9)
temp_in_cel

# We can repeat this each time that he sends me a message
# but it is better to write a function when we keep running the
# same analysis, calculation, model, cleaning, or plot

# A function is a short script that can be repeatedly called
# It has an argument or arguments that are variables used inside
# the function to perform a calculation or make a decision
# We feed in our values to the function and can make it return
# a value or object (e.g. plot, dataframe, vector, message)

# This function converts from fahrenheit to celsius
# The structure is similar to the if else statements
# First we assign the function a name, then we use the "function"
# command, it has round brackets '()' after it
# After the round brackets we use curly ones "{}"
# Inside the curly brackets we place code for what we want the
# function to do
fahrenheit_to_celsius <- function() {
  temp_c <- (temp_f -32) * (5/9)
  return(temp_c)
}
# We use the return command to get our temp_c value back again!
# Without a return it wouldn't give us a value


# Let's test our function!
temperature <- 44
fahrenheit_to_celsius(temperature)
# Oh it didn't work
# We forgot to add an argument to our function, the temperature
# can't be fed in without naming an argument first 
fahrenheit_to_celsius <- function(temp_f) {
  temp_c <- (temp_f -32) * (5/9)
  return(temp_c)
}

# Now it works!
fahrenheit_to_celsius(temperature)
# We can also use values directly
temp_in_cel <- fahrenheit_to_celsius(455)

# We need a name for our function to be able to use it
# Assigning to a variable is how it works in R
function(message) {
  print(message)
}

test_function <- function(message) {
  print(message)
}
# As you can see, we don't always need to return something
# In this case we just want to print it out

# freezing temperature of water
fahrenheit_to_celsius(32)

# boiling temperature of water
fahrenheit_to_celsius(212)

# I have started talking to my astronomer friend about the 
# weather in new jersey, but he works with kelvin
# So, let's make a function to convert to kelvin from celsius
celsius_to_kelvin <- function(temp_c) {
  temp_k <- temp_c + 273.15
  return(temp_k)
}

# freezing point of water in kelvin
celsius_to_kelvin(0)
# boiling temp of water
celsius_to_kelvin(100)

# I am now just acting as a middle person between my cousin and
# friend. I don't want to be there just as a converter for 
# them, so I will write a function to combine the two
# existing functions. This is referred to as nesting functions
fahrenheit_to_kelvin <- function(temp_f) {
  temp_c <- fahrenheit_to_celsius(temp_f)
  temp_k <- celsius_to_kelvin(temp_c)
  return(temp_k)
}

# freezing temp of water
fahrenheit_to_kelvin(32)

# another approach of nesting functions
celsius_to_kelvin(fahrenheit_to_celsius(32))
# The first function (fahrenheit_to_celsius) 
# is executed and the value is returned
# to be fed directly into the second function (celsius_to_kelvin)

# Can you write a function that adds a wrapper to the element of
# a vector? e.g this data
best_practice <- c("write", 'programs', 'for', 'people', 'not',
                   'computers')
# Adds this string
asterisk <- '***'
# to either end of the data by running the function like this:
highlight(best_practice, asterisk)
# the expected output =>
# *** write programs for people not computers ***

# Here there are two steps where the vector h1 adds a wrapper
# to the end of the vector and h2 adds one to the start
highlight <- function(best_practice, asterisk) {
  h1 <- c(best_practice, asterisk)
  h2 <- c(asterisk, h1)
  return(h2)
}
highlight(best_practice, asterisk)
# You can use the vector to update itself
vec1 <- c(1,3,5,5)
vec1 <- c(13,5, vec1)

# v[1] returns the first element of a vector, and v[length(v)]
# will give the last element. Can you write a function called
# 'edges' that returns the first and last elements of a vector?
edges <- function(a_vector) {
  first <- a_vector[1]
  last <- a_vector[length(a_vector)]
  return(c(first, last))
}
# To return more than one object from a function in R you need
# to place them all in a vector. 
# R functions can only return one object, but a vector is a 
# single object

# Here we test out our function and explicitly name the argument
edges(a_vector=vec1)

# Functions accept arguments by name and also by order. If we
# write this function
mySum <- function(input_1, input_2 = 10) {
  output <- input_1 + input_2
  return(output)
}
# What happens when you run mySum(input=1, 3)? 
#What about mySum(3)? Try also mySum(input_2=4)

# This takes 1 explicitly as the value for input_1
# The second argument is positional, input_2 comes after input_1
mySum(input_1 = 1, 3)

# input_1 gets the value 3 (it is in the first position)
# Input_2 has a default value of 2
# in the example above input_2 is given the value 3, here it is 10
mySum(3)
# Breaks because we have no default for input_1
mySum(input_2=4)

# DO NOT do it this way
# Use first positional arguments and then named
# or only named
# or or only positional
mySum(input_2=4, 1)
# positional and then named
mySum(0, input_2=4)

mySum(5, input_2*2)
mySum(5, 10*2)

# ****CLARIFYING****
# square brackets are for indexing (accessing values by position)
# e.g.
vec2 <- c(5,6,7,2)
vec2[3]
# round brackets are for functions, commands (like return), 
# and statements
length(vec2)
if (length(vec2) < 2) {
  print("good")
}
# curly brackets are for what to execute if a statement condition
# is met and for what a function does
func1 <- function(arg1) {
  print("value")
  print(arg1)
}
func1(44)
