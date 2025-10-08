# Logic in R
# Logic is needed a lot in writing code
# We can start with the less than and greater than symbols

num <- 37
num < 100
num > 100

num <- 37
if (num > 100) {
  print("greater")
} else {
  print("not greater")
}
# note that an else is the end here, to use another else requires another if
# however, an if does not require an else statement

sign <- function (num) {
  if (num > 0){
    return (1)
  } else if (num == 0) {
    return (0)
  } else {
    return (-1)
  }
}
# note that we use "==" in the else if, that is used when we make a logic check
# the "==" is a check that num and 0 are equal to each other

# testing the function
sign(3)

# >  greater than
# <  less than
# ==  is equal to
# >=  greater than OR equal to
# <=  less than OR equal to

  
# What about when we want two checks before running a command?
num <- 37
num_2 <- 55
if (num <100) {
  if (num_2 > 100) {
    print("awesome") 
  }
} else{
  print("not awesome")
}

# what about if either condition can be correct to run the command?
if (num < 100 || num_2 >100){
  print("awesome")
} else {
  print("not awesome")
}

# for complex conditions or clearer writing we can state the condition
# before we have our if else statements
is_correct <- (num < 100 || num_2 >100 && num_2<100)
if (is_correct) {
  print("correct!")
} else {
  print("incorrect")
}


# Challenge 1
# write a function plot_dist that creates a boxplot if the length of a 
# vector is greater than a specified threshold and a stripchart otherwise
# you can use the inbuilt r functions boxplot and stripchart
# To see how they work you can use ?boxplot and ?stripchart

plot_dist <- function(data, threshold) {
  if (length(data) > threshold) {
    boxplot(x)
  } else {
    stripchart(x)
  }
}
# testing our function
plot_dist(c(1,2,3,4,4), 4)
plot_dist(c(3,4,555,6), 10)

# Challenge 2

file_names <- list.files(path = "data", 
                         pattern = "inflammation", 
                         full.names = TRUE)
# Setting our initial values, ready to be overwritten
file_name_max <- ""
patient_max <- 0
average_inf_max <- 0

for (f in file_names) {
  dat <- read.csv(file = f, header = FALSE)
  dat_means <- apply(dat, 1, mean) # Applying the mean function per row
  # We loop over index values in the range from 1 to the length of dat_means
  # We check each patient and look for the maximum average inflammation
  # We check all patients keeping the index and file name where the largest 
  # Average inflammation is
  for(patient_index in 1:length(dat_means)) {
    patient_average_inf <- dat_means[patient_index]
    if (patient_average_inf > average_inf_max) {
      average_inf_max <- patient_average_inf
      patient_max <- patient_index
      file_name_max <- f
    }
  }
}


print(file_name_max)
print(patient_max)


