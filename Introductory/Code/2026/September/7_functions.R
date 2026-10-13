# Functions

# print is one of the functions we have been using.
print("hello")

# We can convert degrees Fahrenheit to degrees Celsius, by defining 
# Fahrenheit, here temperture_f and using the following formula to convert to
# degrees C.
temperture_f <- 102
temp_c <- (temperture_f - 32) * (5/9)

# If you need this formula a lot, it's better to make a function out of it.
# It's both more convenient, but it also helps in avoiding mistakes.
# So let's check how this would look like.

# First we assign the function a name, then we use the "function"
# command, it has round brackets '()' after it.
# After the round brackets we use curly ones "{}"
# Inside the curly brackets we place code for what we want the
# function to do.
# Like in this case you might need one or more variables as an input to the 
# function. After all we would like the function to convert a given temperature 
# in Fahrenheit to Celsius. This information goes in between the round brackets
# and call it an argument.

fahrenheit_to_celsius <- function(temp_f){
  temp_c <- (temp_f - 32) * (5/9)
  return(temp_c)
}

# We use the return command to get our temp_c value back again. Without a return 
# it wouldn't give us a value.

# Lets give it a try: 
temp_c_new <- fahrenheit_to_celsius(100)

print(temp_c_new)

# Create a function to go from temperature in Celsius to 
# temperature in Kelvin
# temperature in Celsius + 273.15 -> temperature in Kelvin

celsius_to_kelvin <- function(temp_c) {
  temp_k <- temp_c + 273.15
  return(temp_k)
}

# How to combine the two functions and go from temperature in 
# Fahrenheit to temperature in Kelvin?

fahrenheit_to_kelvin <- function(temp_f) {
  temp_c <- fahrenheit_to_celsius(temp_f)
  temp_k <- celsius_to_kelvin(temp_c)
  return(temp_k)
}

# Two ways to define temp_f
# 1. use the argument
fahrenheit_to_kelvin(temp_f=100)
# 2. use the position
fahrenheit_to_kelvin(100)

# A function can have many arguments, let's checkout the documentation of the 
# following function. 
?read.csv

# read.csv has plenty arguments with a default value. Let's make a function 
# with some default values. Let's play around with assigning values using the 
# positions/ arguments.

mySum <- function(input1=0, input2=0){
  total = input1 + input2
  print(input2)
  return(total)
}

mySum(input1=3)


# Make a function to compute the daily average of the first 
# inflammation dataset

cal_average <- function(filename){
  my_data <- read.csv(filename, header=FALSE)
  average_value <- apply(my_data, 2, mean)
  return(average_value)
}

cal_average(filename = "data/inflammation-01.csv")
