# We use the read.csv function to look at our data
# functions are short re-usable scripts we can "call upon"
# by name and () after the name
# Some functions need arguments (options inside), while others don't
read.csv("data/inflammation-01.csv")
# For some people their system uses "," for decimals
# In that case R will struggle, you can tell it
# to use "." for decimals
read.csv("data/inflammation-01.csv", dec=".")

# To deal with columns names
read.csv("data/inflammation-01.csv", header = FALSE)

# What happens is you use lower case for the header 
# value?
# You can use ?read.csv to get help on the function
read.csv("data/inflammation-01.csv", header=false)
# You can already see the difference between the two
# the first use has blue text for FALSE
# When the text is black R looks for an object 
# such as a variable, dataset, function with that name
read.csv("data/inflammation-01.csv", header="FALSE")
# The same happens when it is upper case, but delivered 
# as a string, it is not the right type of object

# What use is our data if it isn't stored? 
# Let's store the data set in a variable
my_data <- read.csv("data/inflammation-01.csv", header=FALSE)

# Let's look a bit more at variables
# I have been going to the gym and want to brag about how much
# I can lift to my cousin in America
weight_kg <- 55
# In America they use pounds instead of kilograms, so I will convert it
# weight in pounds/lbs
2.2 * weight_kg
# weight now in kg
weight_kg <- 57.5
weight_kg

# A little about naming conventions
# snake case is lower case with _
#my_variable
# camel case
# myVariable
# typically for global variables we use caps
# MY_VARIABLE
# you can use "." in variable names too
weight.kg <- 300 # This is a new variable (different from weight_kg)
# We can use variables to define/calculate new ones
weight_lb <- 2.2 * weight_kg

# I am faking my numbers to impress my cousin now
weight_kg <- 100
print("my current lifting weight")
weight_kg
# R runs line by line, so running the whole
# line will still have the same not updated value
weight_lb <- 2.2 * weight_kg
weight_lb
# Using brackets here means that we both set and 
# print our new value
(total_weight <- weight.kg *2.2 + weight_lb)

# I don't go to the gym over the summer holidays and lose progress
new_weight_kg <- weight_kg - 10
# my cousin recommends a new pre-workout
new_weight_kg <- new_weight_kg ** 2
new_weight_kg


# When we opened our data it showed a lot and was a little messy
# We can use the head function to check the first few rows
head(my_data)
# The tail function shows the last few rows
tail(my_data)
# We can always get information about the functions we use with
# either the ? before the function name or help(FunctionName)
?tail
help(head)
