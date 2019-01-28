# Chapter 3. Preparing data for analysis
# Types of variables in R
# Make this evaluate to "character"
class("factor")


# Make this evaluate to "numeric"
class(8484.00)

# Make this evaluate to "integer"
class(as.integer(99))

# Make this evaluate to "factor"
class(factor(FALSE))

# Make this evaluate to "logical"
class(TRUE)



# Common type conversions
# Preview students with str()
str(students)

# Coerce Grades to character
students$Grades <- as.character(students$Grades)

# Coerce Medu to factor
students$Medu <- as.factor(students$Medu)

# Coerce Fedu to factor
students$Fedu <- as.factor(students$Fedu)
    
# Look at students once more with str()
str(students)



#Working with dates
# Preview students2 with str()
str(students2)

# Load the lubridate package
library(lubridate)

# Parse as date
dmy("17 Sep 2015")

# Parse as date and time (with no seconds!)
mdy_hm("July 15, 2012 12:56")

# Coerce dob to a date (with no time)
students2$dob <- ymd(students2$dob)

# Coerce nurse_visit to a date and time
students2$nurse_visit <-  ymd_hms(students2$nurse_visit)
    
# Look at students2 once more with str()
str(students2)



# Trimming and padding strings
# Load the stringr package
library(stringr)

# Trim all leading and trailing whitespace
str_trim(c("   Filip ", "Nick  ", " Jonathan"))

# Pad these strings with leading zeros
str_pad(c("23485W", "8823453Q", "994Z"), width=9, side="left",pad="0")



# Upper and lower case
# Print state abbreviations
states

# Make states all uppercase and save result to states_upper
states_upper <- toupper(states)

# Make states_upper all lowercase again
tolower(states_upper)



# Finding and replacing strings
# Copy of students2: students3
students3 <- students2

# Look at the head of students3
head(students3)

# Detect all dates of birth (dob) in 1997
str_detect(students3$dob, "1997")

# In the sex column, replace "F" with "Female" ...
students3$sex <- str_replace(students3$sex,"F","Female")

# ... and "M" with "Male"
students3$sex <- str_replace(students3$sex,"M","Male")

# View the head of students3
head(students3)



# Types of missing and special values in R. Which of the following is not a missing or special value in R?
# NA



# Finding missing values
# Call is.na() on the full social_df to spot all NAs
is.na(social_df)

# Use the any() function to ask whether there are any NAs in the data
any(is.na(social_df))

# View a summary() of the dataset
summary(social_df)

# Call table() on the status column
table(social_df$status)



# Dealing with missing values
## The stringr package is preloaded

# Replace all empty strings in status with NA
social_df$status[social_df$status == ""] <- NA

# Print social_df to the console
social_df

# Use complete.cases() to see which rows have no missing values
complete.cases(social_df)

# Use na.omit() to remove all rows with any missing values
na.omit(social_df)



# Identifying outliers and obvious errors. Which two of the following are most useful for identifying outliers?
# a and c


# Dealing with outliers and obvious errors
# Look at a summary() of students3
summary(students3)

# View a histogram of the age variable
hist(students3$age)

# View a histogram of the absences variable
hist(students3$absences)

# View a histogram of absences, but force zeros to be bucketed to the right of zero
hist(students3$absences, right=FALSE)



# Another look at strange values
# View a boxplot of age
boxplot(students3$age)

# View a boxplot of absences
boxplot(students3$absences)