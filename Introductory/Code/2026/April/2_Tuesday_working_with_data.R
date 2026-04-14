# Loading the data in our new file
dat <- read.csv(file="data/inflammation-01.csv", header=FALSE)
# This is to check the first 6 rows of our data
head(dat)
# what is the object that is dat?
class(dat)
# Check the shape of the dataframe
dim(dat)
# Use co-ordinates to access the values (indexing)
# this is done with the square brackets "[]"
dat[1,1]

# middle value, row 30, column 20
dat[30, 20]

# We can also index to get multiple values by using vectors
# Vectors are made with the "c()" function
# Vectors are like a list of values
dat[c(1,3,5),c(10,20)]
# range of values with the ":" operator
dat[5:10, 1:4]
# It works outside the indexing too!
print(1:15)
# This is access all columns for row 5
# there is a space to indicate intention to access all cols
# Everything you do (and don't) write indicates a decision to 
# others, it is best to make clear when we have made a decision 
# instead of a mistake
dat[5, ]
# this returns the whole dataframe
dat[,]

# All rows from columns 16:18
dat[ ,16:18]
# Accessing by column name
dat$V3
dat[ ,'V16']

# first row, of all columns, patient 1
patient_1 <- dat[1, ]
# max inflammation for patient 1
max(patient_1)
# max inflammation for patient 2
max(dat[2, ])

# minimum inflammation on day 7
min(dat[ ,7])
# checking the mean
mean(dat[ ,7])
median(dat[ ,7])
# standard deviation of day 7
sd(dat[ ,7])
# this converts to numeric type automatically
max(dat[1, ])
# Does NOT convert
mean(dat[1, ])
# All these functions will work with a vector "c()"

# summarise function
summary(dat[ ,1:4])

# apply to all rows (per patient)
avg_patient_inflammation <- apply(dat, 1, mean)
avg_patient_inflammation
length(avg_patient_inflammation)
# apply to all columns (per day)
avg_day_inflammation <- apply(dat, 2, mean)
avg_day_inflammation

# What about indexing of lists? Can you make a vector of the word
# "monkey" so that each letter is it's own entry and assign this
# to the variable animal, then get the first 3 and last 3 entries
test_string <- "this is a string"
test_vector <- c(1,2,3,4)

animal <- c("m", "o", "n", "k","e", "y")
animal[1:3]
animal[c(1,2,3)]
animal[4:6]
# what happens if you use negative numbers when indexing?
# What about negative ranges?
animal[-1]
animal[-1:-4]
# Can you make a vector with a rearranged subset of the animal
# data and spell "eon"?
c(animal[5], animal[2], animal[3])


