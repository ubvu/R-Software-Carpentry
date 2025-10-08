# Here we will look at reading and writing different datasets

# We have been using the same dataset for a while, let's check out car-speeds.csv
# if you want to view the data before opening with R you can use the files tab
# in the bottom right window, clicking on the data folder and clicking on 
# car-speeds.csv and finally view to open it here in RStudio

# we can see there is a header, so we set header to TRUE this time
car_speeds <- read.csv("data/car-speeds.csv", header = TRUE)
head(car_speeds)
# What if the delimiter/separator of values in the csv were not commas?
# we change the sep argument, the decimals might also be different
read.csv(file = "data/car-speeds.csv", sep = ";", dec = ',')
# in this case it still reads in the data, but it is not separate columns this time
# R will always try to run whatever you tell it, even if it doesn't make sense
# If there is not an error that breaks it, the code will run!

# What if we want it in a tabled format? we can use the read.csv2 function
read.csv2("data/car-speeds.csv")

# we use the built in unique function to extract unique colours in the database
unique(car_speeds$Color)
# There are two reds here, why?
# look at the first one, it actually has a space infront of it, R sees " Red" and
# "Red" as two different objects

# to fix this we can use the strip.white argument when reading in the csv
car_speeds <- read.csv("data/car-speeds.csv", header = TRUE, strip.white = TRUE)
unique(car_speeds$Color)

# Challenge 1
# Missing data - in the inflammation data we realise that the data was recorded with
# the intent of "0" being a missing recording (or NA)
?read.csv

datNA <- read.csv("data/inflammation-01.csv", 
                  header = FALSE, 
                  na.strings = 0)
datNA

car_speedsNA <- read.csv("data/car-speeds.csv", 
                         header=TRUE, 
                         strip.white=TRUE,
                         na.strings = c("Black", "Blue"))
car_speedsNA

# What about writing csvs?
#For that we can use the write.csv function
write.csv(car_speedsNA, 
          file = "data/car-speeds-cleaned.csv", 
          row.names = FALSE)
# We use the row.names in order to skip the writing of the index column 
# the default is TRUE, in that case you will see a column containing the 
# index values of the data from the dataframe
