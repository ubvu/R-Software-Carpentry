# data types & structures
# In R there are 6 core data types
# Character/string
"this is a string"
# numeric (real or decimal)
41 - 13.4
# integer
3L
# complex 
5 - 3i
# logical
TRUE, FALSE

# Atomic vector has one single datatype
c(1,2,4,5)
c("a", "ageaeg")
c(2, 1.4)
c(2L, 15L)

# We can find out more about our objects with the following functions
class(5i) # High level - the type of the object
typeof(15) # low level - the data type of the object
length(c(1,34,4,5,46)) # Length of the object (number of elements)
attributes(c(4,5,1,6)) # What metadata (notes, special info) is there?

# Let's try this on some other types
x <- 'dataset'
typeof(x)
y <- 1:10
typeof(y)
length(y)

# Changing data types
z <- as.numeric(y)
typeof(z)

# --Some data structures--
# atomic vector - single data type vector
# list - multi data type vector
# dataframe - how we opened our datasets
# factors
# matrix - multi-diemensional vector

# empty vectors are also valid, but not so much use mostly
c()
# Creating a vector 'from the ground up'
vector('character', length=5)
character(5) # This makes 5 empty character types (Strings)
numeric(5)

# comparing two different vectors, numeric and integer
x <- c(1,2,3)
typeof(x)
X1 <- c(1L, 2L, 3L)
typeof(X1)

# We can also update our vectors
z <- c("Donatello", "Michelangelo", "Raphael")
z
z <- c(z, "Leonardo") # Add to the end
z
z <- c('razor', z) # Add to the start
z
z[1] <- 'Razor' # update a value (add capital letter)
z

# two methods of making a range of numbers
series <- 1:20
series
seq(10)
#additional features of seq allow us to change the "step size"
seq(from=1, to=10, by=0.1)


# Missing values - NA
NA # R recognises this as missing data

# We can add the NA into any vector
y1 <- c(0.5, NA, 0.7)
y2 <- c('a', 'b', NA)
y3 <- c(NA, 4L, NA, 21L)

# What happens if you use the function "is.na()" on one of these
# vectors

y4 <- c(1,2,3,4,5)
anyNA(y1)
anyNA(y4)

# SPecial values
1/0 # infinity
0/0 # NaN means Not a Number

# Mixing data types in a vector
mixed_vec <- c("sagaeg", 3, 4L, NA)
mixed_vec <- c( 3, "sagaeg", 4L, NA)
typeof(mixed_vec)
class(mixed_vec)
"3"
"4L"
"NA"


