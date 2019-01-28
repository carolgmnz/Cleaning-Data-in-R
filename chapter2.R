# Chapter 2. Tidying data

# Principles of tidy data
# Each observation forms a row, each variable forms a column, and each type of observational unit forms a table


# Common symptoms of messy data
# Variables are stored in both rows and columns


# What kind of messy are the BMI data?
# Column headers are values, not variable names

# Gathering columns into key-value pairs
# Apply gather() to bmi and save the result as bmi_long
bmi_long <- gather(bmi, year, bmi_val, -Country)

# View the first 20 rows of the result
bmi_long[1:20,]


# Spreading key-value pairs into columns
# Apply spread() to bmi_long
bmi_wide <- spread(bmi_long, year, bmi_val)

# View the head of bmi_wide
head(bmi_wide)


# Functions in tidyr. Which of the following is NOT a function in the tidyr package?
# filter()


# Separating columns
# Apply separate() to bmi_cc
bmi_cc_clean <- separate(bmi_cc, col = Country_ISO, into = c("Country", "ISO"), sep = "/")

# Print the head of the result
head(bmi_cc_clean)


# Uniting columns
# Apply unite() to bmi_cc_clean
bmi_cc <- unite(bmi_cc_clean, Country_ISO, Country, ISO, sep = "-")

# View the head of the result
head(bmi_cc)


# Column headers are values, not variable names
## tidyr and dplyr are already loaded for you

# View the head of census
head(census)

# Gather the month columns
census2 <- gather(census,month,amount,-YEAR)

# Arrange rows by YEAR using dplyr's arrange
census2 <- arrange(census2, YEAR)

# View first 20 rows of census2
census2[1:20,]



# Variables are stored in both rows and columns
## tidyr is already loaded for you

# View first 50 rows of census_long
census_long[1:50,]

# Spread the type column
census_long2 <- spread(census_long,type,amount)

# View first 20 rows of census_long2
census_long2[1:20,]



# Multiple values are stored in one column
## tidyr is already loaded for you

# View the head of census_long3
head(census_long3)

# Separate the yr_month column into two
census_long4 <- separate(census_long3,yr_month,c("year","month"))

# View the first 6 rows of the result
census_long4[1:6,]