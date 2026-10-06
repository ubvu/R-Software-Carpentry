# We have already got my_data in the environment objects so 
# it can be called on in this new script
# Let's find out a bit more about what this object is
class(my_data)
dim(my_data) # What is the 'shape' of the data?
# to access the first value (row 1, column 1) we index
# our dataset using the square brackets
my_data[1,1]

# Accessing the middle value
my_data[30,20]

# Using the c function
my_data[c(1,3,5),c(10,20)]
# ranges of values
c(1,2,3,4,5)
1:5
# applying to our dataset
my_data[1:4, 1:10]
my_data[5:10, 4:7]

# looking at a single row
my_data[5, ] # you don't need include a space, but it makes intentions clear
# Looking at all rows and some columns
my_data[ , 16:18]
# another way to see all data
my_data[ , ]

# referring to column by name
my_data$V3

my_data[ , "V16"]

# first row of all columns
patient_1 <- my_data[1, ]
# max inflammation of patient 1
max(patient_1)

# max inflammation of patient 2
max(my_data[2, ])

# The max and min inflammation of day 7
max(my_data[ , 7])
min(my_data[ , 7])
# how about the mean on day 7?
mean(my_data[ , 7])
median(my_data[ , 7])
# standard deviation of day 7 
sd(my_data[ , "V7"])

# summarise function
summary(my_data)
# summary of multiple columns by name
summary(my_data[ , c("V3", "V5", "V8")])

# Can you make a vector of the word monkey, where
# each letter has its own entry and access the first
# 3 and then the last 3 letters?
word <- c("m", "o", "n", "k", "e", "y")
word[1:3]
word[4:6]
# What happens if you index with negative numbers?
word[-3]
# Can you make a new vector from a rearranged subset
# of the first vector and spell "eon"
word[c(5,2,3)]
new_word <- c(word[5], word[2], word[3])

word[(length(word)-2):length(word)]
word[6-3:6]

help(apply)
# apply to all rows (mean)
avg_patient_inflammation <- apply(my_data, 1, mean)
avg_patient_inflammation
# apply to all columns (mean)
avg_day_inflammation <- apply(my_data, 2, mean)
avg_day_inflammation
