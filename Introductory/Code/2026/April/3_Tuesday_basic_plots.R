# read in data
dat <- read.csv(file="data/inflammation-01.csv", header=FALSE)
# apply to all columns (per day)
avg_day_inflammation <- apply(dat, 2, mean)
avg_day_inflammation

# We can call the inbuilt plot function on a dataframe
plot(avg_patient_inflammation)
# We can look at our plot in the bottom right hand corner
# R has made a scatter plot for us as default 

# Let's calculate and plot a different stat
max_day_inflammation <- apply(dat, 2, max)
plot(max_day_inflammation)

# What about the minimum?
min_day_inflammation <- apply(dat, 2, min)
plot(min_day_inflammation)
