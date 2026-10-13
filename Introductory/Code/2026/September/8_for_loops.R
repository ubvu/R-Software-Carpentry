# Repeating actions with for loops

# A for loop has the following structure:

#for (variable in collection){
#  do things with this variable
#}

# Let's try it out by looping over the different items in the vector fruits.

fruits <- c("apple", "peer", "kiwi")

for (variable in fruits){
  print(variable)
}

# Make a for loop that counts the number of vowels
vowels <- c("a", "e", "i", "o", "u") # vector with the different vowels

len <- 0 # set the counter to 0


# create a loop the loops over the vowels
for (v in vowels){
  len <- len + 1 # each iteration 1 is being added to len. Keep in mind if you
  # you don't set the counter back to 0, you keep adding ;)
  print(len)
}

print(len)


# to different ways of making a vector containing 0, 1, 2, 3, 4, 5
days <- c(0, 1, 2, 3, 4, 5)
days <- 0:5

# let's combine the if statement with the for loop.
# Here follows an example from the group

#dayscourse_R <- 4 # we removed this redundant variable
for (dayscourse_R in days) {
if (dayscourse_R < 4){
  print ("you dont know R")
} else {
  print ("you know R")
}
}

days <- 0:5

dayscourse_R <- 4

for(dayscourse_R in days){
  if (dayscourse_R < 4){
    print ("you dont know R")
  } else if (dayscourse_R >= 4){
    print ("you know R")
  }}


###############################################################################
# It can be useful to repeat the same task for different files. A good first 
# could be to list the files. Fortunately there is a function, list.files, 
# that can be used to list all files in a folder (path). If you only interested 
# in files with a specific pattern in their naming (pattern) this can be 
# specified. By default the files names are being listed. However if you like to 
# have the path this can be set as well (full.names = TRUE).

?list.files()

# Let's try it out

all_files <- list.files(path = "data/", full.names = TRUE, 
           pattern = "inflammation-")

# It can be useful to test on a small sample and not all the files at once.
# Create a sample of filenames -> vector of the first 
# 3 filenames
# Create a loop to print these filenames

#### solution 1 ####

all_files <- list.files(path = "data/", full.names = TRUE, 
                        pattern = "inflammation-")

files_needed <- 1:3 # not very intuitive, consider a different variable name
# counter <- 1 # redundant

for (counter in files_needed){
  print(counter)
  print(all_files[counter])
}

#### Solution 2 ####

files_needed <- list.files(path = "data/", full.names = TRUE, 
                        pattern = "inflammation-")[1:3]

for (file in files_needed){
  print(file)
}


#### Solution 3 ####

all_files <- list.files(path = "data/", full.names = TRUE, 
                        pattern = "inflammation-")

for (file in all_files[1:3]){
  print(file)
}


