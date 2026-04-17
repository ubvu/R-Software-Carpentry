# Reading and writing csvs

# import the data and look at the first 6 rows
carSpeeds <- read.csv(file = "data/car-speeds.csv")
head(carSpeeds)
# Dealing with commas in data or different separators
# read.csv(file='data/car-speeds.csv', sep=';')
?read.csv
 #If you have another language on your computer that does not use a latin
# alphabet you can change the fileEncoding variable "UTF-8" and that
# should fix things

carSpeeds <- read.csv(file='data/car-speeds.csv', stringsAsFactors=TRUE)
# What this does is checks if the colour is Blue and if so then change
# it to Green, return this new version to carSpeeds$Color column
# The factor is a numeric attachment to the data to make it 
# categorical, this can be ordered or unordered
carSpeeds$Color <- ifelse(carSpeeds$Color == 'Blue', 'Green', carSpeeds$Color)
carSpeeds$Color
?ifelse

#carSpeeds$Speed <- as.factor(carSpeeds$Speed)
#carSpeeds

carSpeeds <- read.csv(file='data/car-speeds.csv', stringsAsFactors = TRUE)
str(carSpeeds)
carSpeeds <- read.csv(file='data/car-speeds.csv', stringsAsFactors = FALSE)
str(carSpeeds)

# Checking the unique values in our columns
unique(carSpeeds$State)
unique(carSpeeds$Speed)

carSpeeds <- read.csv(file='data/car-speeds.csv', as.is = 1)
str(carSpeeds)

carSpeeds$Color <- ifelse(carSpeeds$Color == "Blue", "Green", carSpeeds$Color)
carSpeeds$Color

carSpeeds$State <- ifelse(carSpeeds$State == "Arizona", "Ohio", carSpeeds$State)
carSpeeds$State
carSpeeds <- read.csv(file='data/car-speeds.csv', as.is = c(1,2,3))
carSpeeds$State <- ifelse(carSpeeds$State == "Arizona", "Ohio", carSpeeds$State)
carSpeeds$State

" ian" == "ian"

write.csv(head(carSpeeds), file = 'data/car-speeds-cleaned.csv')
?write.csv
write.csv(head(carSpeeds), file = 'data/car-speeds-cleaned.csv', row.names=FALSE)


subset_df <- carSpeeds[c("Speed", "State")]
class(subset_df)

test_df <- subs_zw[c("col1", )]
filter(test_df, test_df$school == "Bachelor")
?filter
