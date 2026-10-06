# Data types and structure

"strings" # also known as characters
integer <- 2L
numeric_val <- 3.14 # numeric is also for real, non integer
a_vector <- c(1,3,19)
# There are also complex (imaginary + real numbers)
1i + 4
# and logical values

# single data type vector is an atomic vector
my_atom <- c(3,3,3,3,3,3,5)
c("a", "swc")
# mixed data vectors
c(2, 15.5)
c(5L, 5, "five")
c(1+5i, 2i, 4, "yellow")
mean(c("22", "fifty", 13, "i am old", 41.123))
# We can't get the mean of a string
mean(c("2", 5, "10"))
class(my_data)
typeof(my_data)

length(my_data)
attributes(my_data)

# different data sctructures
# atomic vector
c("word", "another word", "final word")
# List 
# matrix multidimensional vector (maths)
# data frame (like we use for our dataset)
# factors (categorical labelled data)

# four different methods of making a vector
c()
vector("character", length= 10)
character(3)
numeric(4)

my_mixed_vec <- c(1+5i, 2i, 4, "yellow")

Z <- c("Donatello", "Michelangelo", "Raphael")
print(Z)
# Adding a new value to the end
Z <- c(Z, "Leonardo")
print(Z)
# Adding the new value to the start of the vector
Z <- c("Razor", Z)
print(Z)
# Adding a new value into the middle
Z <- c(Z[1:3], "Splinter", Z[4:5])
print(Z)

# Working with missing data
# In R NA means there is nothing there
# So if you import a dataset with empty cells they will have NA 
y1 <- c(0.5, NA, 0.7)
y2 <- c("a", "b", NA, "d", "e")
y3 <- c(NA, 4L, NA, 2L)

# We can look at these vectors to see where the NAs are
is.na(y2)
print(sum(is.na(y2)))

y4 <- c(1,2,3,4,5)
# anyNA will let us know if there are any NAs at all
anyNA(y1)
anyNA(y4)

# two more special values
1/0
# Inf, infinity
0/0
# NaN, not a number

# Vectors are immutable meaning they cannot be changed in place
# Changes require forming a new vector
character_vec <- character(4)
charcter_vec[2] <- "hello"
character_vec
# Lists are mutable meaning we can change them in place
# values inside a list can be changed freely
char_list <- list("","","","")
char_list[3] <- "hello" 
char_list
