# Making choices or in programming terms "if statements"

# Assigning a value to our variable
num <- 100

# Checking if our function is smaller or larger than 100
num > 100 # The outcome is Boolean, either TRUE or FAlSE

# Imagine we would like the program to do something only if the outcome is TRUE. 
# We can implement that by writing if, followed by
# placing the statement between brackets ().
# The event that occurs if the condition is met is inside
# curly brackets "{}"

if (num > 100){
  print("The number is larger than  100")
  } 

# ==: equal too
# > : larger than
# < : smaller than
# != : not equal too
# <= : smaller than or equal too
# >= : larger than or equal too


# else can be used to do something in any other case.
if (num > 100){
  print("The number is larger than  100")
} else {print("The number is not larger than 100")}

# Additional checks can be added. By adding an else if statement. 
#These will only be assessed if all preceding checks were FALSE.
if (num > 100){
  print("The number is larger than  100")
} else if (num == 100) {"The number is equal to 100"
} else {print("The number is not larger than 100")}



#Which of the following would be printed if you were to run this code? Why did you pick this answer?
# if (4 > 5){
#  print('A')
# } else if (4 == 5){
#  print('B')
#} else if (4 < 5){
#  print('C')}

#A
#B
#C <-
#B and C


# A combination of check can also be assessed by using the AND and OR operators.
# && : AND
# || : OR

num2 <- 100

if (num==100 && num2==101){
  print("both are true")
} else {print("at least one of the conditions is not true")}

if (num==100 || num2==100){
  print("at least one of the conditions is true")
} else{
  print("none of the conditions is true")
}

# Implement a if statement from your daily life or work related
# Try to implement different elements, like and/or else if and else

start_time <- 10.00
enter_time <- 10.15

if (enter_time == start_time){
  print("your are on time")
} else if (enter_time > start_time){
  print("you're late")
}

num3 <- NA

# the following doesn't work, because NA is a special case
if (num3 == NA){
  print("the value is NA")
}

is.na(num3)

# One can check for NA in the following way
if (is.na(num3)){
  print("the value is NA")
}


