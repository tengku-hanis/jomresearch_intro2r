# Exercise for webinar: intro to R (for non-coders)
# Tengku Muhammad Hanis Mokhtar
# October 21, 2023

# OPEN hints and answers when needed: https://tengku-hanis.github.io/intro2r_answers/

# Packages ----------------------------------------------------------------

library(tidyverse)


# Data --------------------------------------------------------------------

data("USArrests")
?USArrests
dat <- 
  USArrests %>% 
  rownames_to_column(var = "State")


# Question 1 --------------------------------------------------------------

# Check whether this data contains missing values (NAs) - write a code. 




# So, does this data contains missing values: Yes or No?




# Question 2 --------------------------------------------------------------

# Write a code to see the murder arrest for Ohio (only variable murder should appear in the result).




# Question 3 --------------------------------------------------------------

# What is the average number of rape arrest across the US state in this dataset? - write a code. 





# Question 4 --------------------------------------------------------------

# Make a scatter plot between variable UrbanPop (x axis) and Murder(y axis) - write a code using ggplot2 package. 




# Next, separate the scatter plot above to show the country
