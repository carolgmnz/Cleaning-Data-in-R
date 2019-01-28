# Chapter 1. Introduction and exploring raw data

# The data cleaning process
# Preparing data for analysis 


# Here's what messy data look like
# View the first 6 rows of data
head(weather)

# View the last 6 rows of data
tail(weather)

# View a condensed summary of the data
str(weather)


# Here's what clean data look like
# View the first 6 rows of data
head(weather_clean)

# View the last 6 rows of data
tail(weather_clean)

# View a condensed summary of the data
str(weather_clean)


# Getting a feel for your data
# Check the class of bmi
class(bmi)

# Check the dimensions of bmi
dim(bmi)

# View the column names of bmi
names(bmi)


# Viewing the structure of your data
# Check the structure of bmi
str(bmi)

# Load dplyr
library(dplyr)

# Check the structure of bmi, the dplyr way
glimpse(bmi)

# View a summary of bmi
summary(bmi)


# Looking at your data
# Print bmi to the console
bmi

# View the first 6 rows
head(bmi)

# View the first 15 rows
head(bmi,n=15)

# View the last 6 rows
tail(bmi)

# View the last 10 rows
tail(bmi, n=10)


# Visualizing your data
# Histogram of BMIs from 2008
hist(bmi$Y2008)

# Scatter plot comparing BMIs from 1980 to those from 2008
plot(bmi$Y1980,bmi$Y2008)



