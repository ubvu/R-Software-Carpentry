# Making Choices
# Logical datatypes (or booleans) are TRUE and FALSE
# WE use them to make, check, and assert statements

# Assigning a value to our test variable
num <- 37
# We can use the mathematical functions to check if our variable 
# is larger or smaller than 100
num > 100
num < 100

# Examples of if statements
# if there muesli, then I will eat some for breakfast
# if it is raining, then I will take public transport

# Can you provide one or two examples of if then statements from
# your daily life?

# if there is muesli, then I will eat some for breakfast
# else, I will buy some more muesli

# Let's turn this idea into code
# The statement that we need to assess is contained in round
# brackets "()" 
# the event that occurs if the condition is met is inside
# curly brackets "{}"
if (num > 100) {
  print("Greater than 100!")
}
print("Done.") # We add this to confirm that the code ran
# Running the above statement doens't return anything as the
# condition was not met

# What about when num is not more than 100?
# Here we use the else statement, if x then y, else 
# (in every other event) then z.
if (num > 100) {
  print("Greater than 100!")
} else {
  print("it is smaller than 100 :(")
}

# What about a 2nd condition? I might have no muesli, but bread
# I can eat bread for breakfast instead. 
# if I have muesli then eat for breakfast, else if I have bread 
# then make toast, else I will buy more groceries
# Let's turn this idea into code
# "==" is a check of equivalence, is num actually 37?
if (num > 100) {
  print("Over 100")
} else if (num == 37) {
  print("my lucky number")
} else {
  print("not lucky, not big")
}
# the chain ends because the else if statement condition is met
# That means the else condition doesn't have to be used

# Starting a new if statement means the chain is broken
# the new if statement chain will then be followed instead
if (num <100) {
  print("under 100")
}
if (num <10) {
  print("small")
} else {
  print('not 10')
}


# What do you think will happen here and why?
if (num >100) {
  print("over 100")
} else if (num < 50) {
  print('less than 50')
} else{
  print("between 50 and 100")
}
if (num <10) {
  print("small")
} else {
  print('not 10')
}

# less than or equal to and greater than or equal to
#<= >=

# a new example, this time we break up a string
password <- "strong"

# Strings (character data type in R) are treated as a single
# object, that means we can't use the length or [] index method
# on them. To do this we instead use "substr()" to take a subset
# of a string (index it) and "nchar()" to get the number of 
# characters in a string (find the length of it)

# To perform two conditional checks we need the "&&" sign
# This means we only print password is strong when both 
# conditions are true
if (substr(password, 1,1) == "s" && nchar(password) > 5){
  print('password is strong!')
} else {
  print('password is not strong')
}


# Here we use || to check if the first character is 's' OR if 
# the string is exactly 6 characters long
if (substr(password, 1,1) == 's' || nchar(password) == 6){
  print("password is probably strong")
} else {
  print("password is not strong")
}

# difference between length and nchar
length(password)

length(c(1,3,35,35,3,6,65))
# checks the length of the number of characters per element of
# the vector
nchar(c(1,4,5,6,5,6,711))
nchar(c(315, 11, "hello", "$^@$&#%*"))
nchar(c("gaaeagfa"))
nchar("agaeA3")
# Difference in indexing vectors and strings
test_vector <- c(1,5,6,77,2)
test_vector[2]
password[2]
password[1]
# This takes the string and then the start position of where
# we want a subset (to index) and third is the end position
# e.g. taking the second character like this ->
substr(password, 2,2)
# If you want to know more about a function then you can use
# the "?" before the function name and run it (it must be empty)
?substr()
password <- "1stronger"

# Making even more complex statements
if ((nchar(password)==6 && substr(password, 1,1) == 's') ||
    nchar(password) >6 && substr(password, 1,1) == 's'){
  print("statement 1")
} else if ((num < 100 && num > 50) || (num >15 && num < 89)) {
  print("statement 2")
}

# Can you write a "more complex" statement? i.e. using 
# (X AND Y) OR (A AND B)
password <- "nederlande"
if (nchar(password) > 5 && substr(password, 4,4) == "d" || substr(password, 2,2) == "i") {
  print("password is strong")
} else {
  print("print password is weak")
}

# For this is NOT equal to  we use "!="
breakfast <- ""

# This checks if breakfast is anything but muesli
if (breakfast != "muesli") {
  print("toast again..")
}

# if I don't have muesli then I eat toast

# How NA works with logic
a <- NA
a == 1

# Can we check if there is an NA?
if (a == NA) {
  print('no value!')
}

is.na(a)
# rewriting the statement above
if (is.na(a)) {
  print('no value!')
}

# NA does not engage with logical checks
# To get a logical (boolean) return we need to use is.na()

grade <- 7
if (grade < 9 || grade > 6) {
  print("good job!")
}
# This format does not work
if (6< grade <9) {
  print('well done')
}


