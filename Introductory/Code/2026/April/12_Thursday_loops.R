# Loops

for (i in 1:10) {
  print(i)
}
# i now holds the last value in the loop
print(i)

my_vector <- c("hello", "how", "are", "you", "?")
for (value in my_vector) {
  print(value)
}

a <- 10:20
b <- 5:15

res <- numeric(length=length(a))
res

for (i in seq_along(a)) {
  print(i)
  res[i] <- a[i] + b[i]
}

for (i in a) {
  print(i)
  res[i] <- a[i] + b[i]
}
?seq_along
res

seq_along(a)
1:length(a)

# to get index value and value form object
for (i in seq_along(a)) {
  print(paste("at index ", i, " the value is: ", a[i]))
}

x <- 10
# There is another loop type, the while loop
# This is like a mixture of an if statement and a for loop
# The code will keep looping until the statement is no longer true
# aka the condition is no longer met
while (x >0) {
  print("I'm having fun!")
  print(paste("my energy is ", x, " out of 10"))
  x <- x -1
}
# This reduces x to 0 and then stops


# WARNING THIS WILL CRASH R!!!
# This will not ever stop, happy is not changed in the loop 
# this means that the condition is always met and the loop runs 
# forever!
happy <- TRUE
while (happy) {
  print("I'm happy")
}


# Apply instead of loops
# R has 4 other types of loops, these are apply functions
# It will run over all elements of your object and return a 
# a list, array, simplified object, or an object of your choice

# apply(), lapply(), sapply(), vapply()


