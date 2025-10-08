# The dataset for these sessions can be found on the 
# software carpentries website in the link below:
# https://swcarpentry.github.io/r-novice-inflammation/data/r-novice-inflammation-data.zip

read.csv(file = 'data/inflammation-01.csv', header = FALSE)
# in case you don't use commas for csvs or xlsx, here it is a dot "."
# read.csv(file = 'data/inflammation-01.csv', header = FALSE, dec = '.')
# R is case sensitive
# ReaD.Csv(file = 'data/inflammation-01.csv', header = FALSE)
# When using wrong case it will break instead of a default, :'(
read.csv(file = 'data/inflammation-01.csv', header = false)

x <- 12
x
# Assigning value to variable
weight_kg <- 55
weight_kg

# weight in pounds (lbs)
weight_lb <- weight_kg * 2.2
# weight in lbs is....
weight_lb

weight_kg <- 57.5
# weight now in kg is..
weight_kg
# dots can be used instead of "_"
weight.kg <- 12
weight.kg

# weight now in lbs
weight_lb
weight_lb <- weight_kg * 2.2
weight_lb
# Use the brackets to print
(total_weight <- weight_kg * 2.2 + weight_lb)

new_weight <- weight_kg - 10

# tried supplement
new_weight_kg <- weight_kg /2
new_weight_kg

# assign dataset to variable
dat <- read.csv(file = 'data/inflammation-01.csv', header = FALSE)

# first 6 rows
head(dat)
# last 6 rows
tail(dat)

# what is dat?
class(dat)
dim(dat)

# looking at the first row
dat[1, 1]
# look at the middle value
dat[30, 20]

# vector to see multiple rows and columns
dat[c(1, 3, 5), c(10, 20)]

# range of values
1:5
3:12

dat[1:4, 1:10]
# row 5 and all columns
dat[5, ]

dat[, 16:18]
# all rows and all columns, the spaces are stylistic for clarity
dat[ , ]
# finding a column by name
dat$V16
dat[, 'V16']

# Manipulating data

patient_1 <- dat[1,]
# max inflammation for patient 1
max(patient_1)
max(dat[2,])
# minimum
min(dat[, 7])

# mean
mean(dat[,7])
median(dat[,7])
sd(dat[,7])
# This will convert to numeric vector
max(dat[1,])
# This will NOT convert to numeric vector
mean(dat[1,])
# To fix this we use
mean(as.numeric(dat[1,]))

# summary of stats
summary(dat[, 1:4])

# apply to all rows
avg_patient_inflammation <- apply(dat, 1, mean)
avg_patient_inflammation
# Apply to all columns
avg_patient_inflammation <- apply(dat, 2, mean)
avg_patient_inflammation

animal <- c('m', 'o', 'n', 'k', 'e', 'y')
# index first 3, last 3 
# what happens using negative numbers, or negative range?
# can you re-index to spell 'eon'?
animal[1:3]
animal[4:6]
animal[-3:0]
animal[-6:-4]

animal[c(5,2,3)]
# this doesn't work as the dimensions are wrong (looks for the 3rd)
animal[5,2,3]

# Plotting
# scatter plot of avg inflammation per day
plot(avg_patient_inflammation)


max_day_inflammation <- apply(dat, 2, max)
plot(max_day_inflammation)
min_day_inflammation <- apply(dat, 2, min)
plot(min_day_inflammation)
