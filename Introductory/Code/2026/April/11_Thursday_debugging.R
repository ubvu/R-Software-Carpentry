# Debugging

# We might make a typo in the function name and the function will 
# not be found
prnt("ffff")
print("dgaeg")
# The same way that we can recognise these are the same word but 
# different R will not see them as the same at all
# Dealing with text can often provide this sort of problem
# We can put all the text into the same format though
"day" == "DAY"
# We can change the case with tolower() =>
a <- "DaY"
tolower(a)

# WE can print out to make sure that we are reaching this point or not
print("working")
# If you forget to run this line
b <- 3
# this line will not work as object b can't be found
c <- b +1
# This can also happen with typos
bee <- 31
cee <- bea +3
cee <- bee /5

mean("gageagea") 
sd(as.factor(c(1,2,4,4)))
read.csv(124214)

our_vector <- as.factor(c(1,2,4,4))
sd(as.numeric(our_vector))
# We can get around the invalid type error by converting our object
# this is one with as.<object type>()

# “subscript out of bounds” 
my_vector <- c(1,2,3,4)
my_vector[7]
my_df <- read.csv("data/inflammation-01.csv", header= FALSE)
my_df[, 100]
# Check the length of your indexable objects and use dynamic lengths 

# “Error: unused argument”
my_func <- function(t, b) {
  t = t**2 + b
  return(t)
}
# You can get this error when using too many positional arguments
my_func(4, 3, 1)
my_func(5,4,3)
# It will also happen if you use an argument that does not exist in the function
my_func(j=3, 1)
# we can alsways check functions and their arguments with the ? 
?read.csv
# When you first type out a function it will show the arguments
my_func()


# “Error in …: argument “..” is missing with no default’
my_func(5)
my_func(b=1)
# Make sure to provide values for all arguments
# You can always add defaults to your own functions

# “Error in file(file, "rt") : cannot open the connection
#In addition: Warning message:
#  In file(file, "rt") :
#  cannot open file 'nonexistent_file.csv': No such file or directory
read.csv("my_data/inflammation-01.csv")
# Check where R is operating from, use getwd() in the console
# WE can use the explicit path - this is the path all the way from
# which drive R should look at and every folder between
read.csv("C:/Users/tis254/Documents/beginner_april/data/inflammation-01.csv")
# realtive path is from where R is running
read.csv("data/inflammation-01.csv")
# You can get similar errors when you already have an excel file open and 
# try to open it in R

# To fix the reached max we can change the global options to display 
# more by default
options(max.print=10000)
?options
read.csv("data/inflammation-01.csv")


my_word <- "ham & pineapple"
# our example errors
if (my_word == "reed"){
  print("read")
}
# This is a logical check that works, it checks do these objects exist
my_word <- 2 && 5
my_word
# This is a logical check that cannot work
my_word <- "ham" & "pineapple"
# To add strings in R, we use
my_str <- paste("fff","ggg", "lll")
my_str
?paste
# to avoid including the spaces we need the separator argument (sep)
# set to =""
paste("bus", "stop", sep="")
# To be a logical check we need to use one of the logical operators
# <, >, <=, >=, !=, ==
# && (and) and || (or), ! (not) can be used to construct more complex 
# conditional checks

y <- 5
u <- y +1
return(y)
y
print(y)
y_func <- function(y) {
  u <- y +1
  return(y)
}
y_func(5)


# Typos that give other types of errors
print("g"
# You might forget brackets, nothing to be ashamed of
# R studio will highlight your brackets so you can check 
# everything is closed
print(c((4+7), 8, paste("t", "ry")))

print("hello world")
ab <- 5/17
cd <- ab**3
if (cd > 10) {
print("good job")
}

# We can change this to an equivalence check
TRUE + TRUE = FALSE
TRUE + TRUE == FALSE
# Behind the scenes TRUE and FALSE also have numeric values
# TRUE is 1 and FALSE is 0
# e.g. You might want to check how many people in your data said yes
# with if (tolower(answer) == "yes") you can then sum the number 
# of TRUE and FALSE to see how many said yes
as.numeric(TRUE)
as.numeric(FALSE)


# Use simple and small test data sets
# Keep the data or values to the most simple form (1, 0, NA, etc)
# MAke sure you can check against examples you are definite on the
# Results, e.g. this is always true 1+ 1 = 2
# length(my_vec) Make sure that you conserve the size or shrink data
# only when intended

# Plotting your data, visualising your work can help you spot problems
# Make you program fail fast to save waiting time
# TRy to use an exmaple that will break your code everytime
# If you didn't fix the error but it now works you never know
# when it will haunt you again

# Make sure to squash one bug at a time, don't change too much at once

# Add comments and keep track of what is done and why
#TODO: Make sure to add enough context in the comments

