# Scatter plot (default of plot) of the average day inflammation
plot(avg_day_inflammation)
# y axis is the inflammation
# the x axis is the index value for the days (columns)

# Let's plot the maximum daily inflammation
# Here we use the apply function to apply the max function to
# our data set
?apply
# The apply function is useful for functions that are made for 
# use on individual values, not datasets
# It has an option for applying per row or column 
# When the second argument is 1 it is applied per row and when 
# it is 2 it is applied per column
max_day_inflammation <- apply(my_data, 2, max)
plot(max_day_inflammation)
# how about the minimum daily inflammation
min_day_inflammation <- apply(my_data, 2, min)
plot(min_day_inflammation)
