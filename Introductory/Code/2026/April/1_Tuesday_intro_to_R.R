# We will start with some basic arithmetic
# All symbols are the same as you would use in excel/spss/python
1+2
40-12
4*9
9/3
# ** is to the power of and * is multiply
3**2
# This is just a comment, R won't run it
# to comment multiply lines at once use ctrl + shift + c
# = is for a different type of assignment
variable = 12
x <- 4 # This is the standard type of variable assignment

# To access files there are two methods:
# explicit or global path
read.csv("C:/Users/tis254/Documents/beginner_april/data/inflammation-01.csv")
# relative path
read.csv("data/inflammation-01.csv")
# Your path to your own data might be a bit different
# If you are unsure where your code is executing from you can
# write "getwd()" in your console and run it

# Using the header argument means there are no named columns
# r will add some for you
read.csv("data/inflammation-01.csv", header=FALSE)
# If you use "," for decimals then you need another argument
# add in "dec = ','" to avoid problems
# e.g. read.csv("data/inflammation-01.csv", header=FALSE, dec=',')

# false is not the same as FALSE, R is case sensitive
read.csv("data/inflammation-01.csv", header = false)

# To be able to work on our dataset, or access it in the 
# environment window we need to assign it to a variable
dataset <- read.csv("data/inflammation-01.csv", header=FALSE)
# print out data
dataset
# we can use the print function to show the dataset
print(dataset)

# Let's do som more work with assigning variables
# I have gotten back into the gym and can now 
# preacher curl this much
weight_kg <- 55
# I have a cousin in the US and want to brag to him
# weight in pounds (lbs):
2.2 * weight_kg
weight_kg <- 56
# weight_kg is not the same as Weight_kg
Weight_kg
weight_kg

# It is best if we assign this to a variable too
# R Allows you to use "." in your variable names
weight.lbs <- 2.2 * weight_kg
weight.lbs
# example of naming conventions
# snake case my_var_2 all lower case and uses underscores "_"
# camel case MyVar2 has caps for the start of each word
# R dot convention my.var2 you can use a dot to separate

# Naming your variables is important. It provides context to you
# and others that read your code what is happening in your code
# Try to keep names short, but clear, you don't want to write
# bio_dataset_averages_per_day 50 times over, but equally BDAPD
# won't be clear to anyone else and might not be to you after 
# the weekend


weight_kg <- 100
# weight now in kg
weight_kg
# and weight now in lbs
weight.lbs
# This isn't a live update, once calculated it remains static
# now we update the lbs value
weight.lbs <- 2.2 * weight_kg # You can use variables to create new ones
weight.lbs

# We can also use multiple variables to form a new one
total_weight <- (weight_kg * 2.2) + weight.lbs
new_weight_kg <- weight_kg - 10
new_weight_kg <- new_weight_kg/2
# If we want to add a message we can use the print() function
# The print function can be used to display anything in the console
print("never trust bodybuildingforums.com")
print(new_weight_kg)


