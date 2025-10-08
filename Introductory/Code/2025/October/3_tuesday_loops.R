# As an example we copy the function from the challenge from yesterday

analyze <- function(filename) {
  # Plots the average, min, and max inflammation over time.
  # Input is character string of a csv file.
  dat <- read.csv(file = filename, header = FALSE)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation)
}

analyze("data/inflammation-01.csv")
analyze("data/inflammation-02.csv")

# Looking at a for loop example
best_practices <- c("Let", "the", "computer", "do", "the", "work")
# We want a function to print out all the words in a sentence
print_words <- function(sentence) {
  print(sentence[1])
  print(sentence[2])
  print(sentence[3])
  print(sentence[4])
  print(sentence[5])
  print(sentence[6])
}

print_words(best_practices)

new_sentence <- c("Let", "the", "computer", "do", "the")

print_words(new_sentence)

print_words <- function(sentence) {
  for (word in sentence) {
    print(word)
  }
}
# For a shorter sentence this doesn't work
print_words(best_practices)
print(new_sentence)

len <- 0
vowels <- c("a", "e", "i", "o", "u", "y")

for (v in vowels) {
  len <- len +1
}
len

# Having a variable outside of the function that we use
# inside the function will not change the variable value
# inside the function is like a separate environment
# But doing this can make your code confusing, remember
# variable names are important
y <- 10
print(y)
simple_function <- function(x) {
  y <- 5
  return(x)
}
simple_function(2)
print(y)

# However, if a variable is referred to in a for loop
# that will change it outside of the loop too
letter <- "z"
for (letter in  c("a", "b", "c")) {
  print(letter)
}
print(letter)

# Challenge 1
# The sequence, seq, fucntion returns a vector of the values up to the
# entered number
print(seq(3))
# Printing it gives all numbers on one line, we want the numbers each on
# their own line


print_N <- function(N) {
  # this function takes a number as input
  # It creates a sequence vector
  # Then it prints each element of the vector
  vec_N <- seq(N)
  for (number in vec_N) {
    print(number)
  }
}
# testing our function
print_N(100)

# challenge 2

total<- function(ex_vec){
  # This function prints the total of all the numbers
  # in a vector by adding each of them in a for loop
  # example: total(5) => 15
  output <- 0 
  for(z in ex_vec) {
    output <- output + z
  }
  print(output)
}
# testing the function
total(seq(1000))

# challenge 3

expo <- function(a,b) {
  # this function gives the exponential of a to the power of b
  # example expo(2,3) => 8
  c <- a
  for (i in seq(b-1)) {
    a <- a *c
  }
  print(a)
}
# testing the function 
expo(2,100)

# This is the list.files function
list.files()
# let's see what the function needs
?list.files
# We want to see what csvs we have in our data folder
list.files(path="data", pattern="csv")
# Note that we can just use "data" because the data folder is in the
# same folder as this script

# we can also use this for file names, not just types
file_names <- list.files(path = "data", pattern = "inflammation")

# We can use this to load files from the results!
read.csv(file_names[1], header = FALSE)
# It doesn't work, that is because we are looking for the file our our 
# current folder, not the data folder

# We can use the full.names argument set to TRUE to get the full path instead
file_names <- list.files(path = "data", 
                         pattern = "inflammation", 
                         full.names = TRUE)
head(read.csv(file_names[1], header=FALSE))

# We are taking a step further with the pattern
# This time we want to look for only files that have numbers in the name as well
# the [0-9] means in the range of 0 to 9 and the {2} means only where there
# is two numbers in the name
file_names <- list.files(path = "data", 
                         pattern = "inflammation[0-9]{2}.csv", 
                         full.names = TRUE)

# We can now use this to plot all of the avg values for each inflammation file
for (name in file_names) {
  print(name)
  # We use the function we copied from the start
  analyze(name)
}
# Check the plots window, they're all there!

# Challenge 4
# Make a function to apply the analyze function to all the files

analyze_all <- function(folder, pattern){
  # This function uses the analyze function to plot all datasets in the given
  # folder location that match the given pattern
  filenames <- list.files(path = folder, 
                          pattern = pattern, 
                          full.names = TRUE)
  for (name in filenames) {
    print(name) # check that all files are covered
    data <- read.csv(file = name, header = FALSE)
    avg_patient_inflammation <- apply(data, 2, mean)
    min_patient_inflammation <- apply(data, 2, min)
    max_patient_inflammation <- apply(data, 2, max)
    plot(avg_patient_inflammation)
    plot(min_patient_inflammation)
    plot(max_patient_inflammation)
  }
}

analyze_all("data", "inflammation")
# Remember, we defined analyze at the start of this file, so we can always
# Call that function inside of our new analyze_all function too!

# We will quickly take a look at how to use the pdf function, in case we want
# to export work to pdf
?pdf
pdf("inflammation-01.pdf")
# commands that follow will be entered into our pdf
analyze("data/inflammation-01.csv")
# Check the files window in the bottom right, you'll see the pdf exists there now
# To stop this again we use the dev.off command
dev.off()
