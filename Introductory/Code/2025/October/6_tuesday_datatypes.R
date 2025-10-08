car_speeds <- read.csv(file = "data/car-speeds.csv")
# what type of data is carspeeds?
typeof(car_speeds)
# Objects in R also have classes, to check this we use the class function
class(car_speeds)

# Let's check some text now
x <- "dataset"
typeof(x)
class(x)

# How about when using the range command?
y <- 1:10
typeof(y)
length(y)

# What if we need to change the datatype?
# we can use as.X where X is the datatype to convert to
# for example to numeric
z <- as.numeric(y)
typeof(z)
z

# You can create dataobjects by calling the type
vector()

logical(0)

# it is possible to state the type and length
vector("character", length=5)
# or the shorter way
character(5)
# and for numbers
numeric(5)

x <- c(1, 2, 3)
z <- c("Angela", "Pamela" ,"Sandra","Rita", "Monica", 
        "Erica", "Tina", "Mary", "Jessica")

typeof(z)
length(z)
# we can also change the object type to s string like so
str(z)

# We have only seen vectors with one data type inside, but you can mix them, e.g.
xx <- c(1.7, "a")


# We have seen a format of these in dataframes, but we can look at more traditional
# matrices (plural of matrix)
m <- matrix(nrow = 2, ncol = 2)
m[1,1] <- 6
m
# Confirming the class and dimensions of our matrix
class(m)
dim(m)

# to add a column we use column bind, cbind 
m <-cbind(m, c(4,5))
m
# We can also do this with a row with the row bind, rbind
m <- rbind(m, c(4,5))
m

# this is a list, we can keep mixed data types and they will keep them the same 
# format as you wrote them
x <- list(1, "a", TRUE, 1 +4i)


