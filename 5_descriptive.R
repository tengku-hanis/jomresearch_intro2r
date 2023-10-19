## ===========================================================================#
## Descriptive statistics in R
## Author: Tengku Muhd Hanis Mokhtar
## Date: 21-10-2023
## https://jomresearch.netlify.app/
## ===========================================================================#


# Packages ----------------------------------------------------------------

library(tidyverse)
library(summarytools)
library(skimr)


# Data --------------------------------------------------------------------

glimpse(iris)


# Summary -----------------------------------------------------------------

summary(iris)

skim(iris)


# Numerical ---------------------------------------------------------------

## General ----
descr(iris)

## For one variable ----
mean(iris$Sepal.Length, na.rm = T)

iris$Sepal.Length |> 
  mean(na.rm = T)

iris %>% 
  # na.omit() %>% 
  summarise(mean = mean(Sepal.Length), sd = sd(Sepal.Length))

## For > 1 variables ----
iris %>% 
  summarise(median_Sepal.Length = median(Sepal.Length), iqr_Sepal.Length = IQR(Sepal.Length), 
            mean_Sepal.Width = mean(Sepal.Width), sd_Sepal.Width = sd(Sepal.Width))

## Based on other grouping variable ----
iris %>% 
  group_by(Species) %>% 
  summarise(mean = mean(Sepal.Length), sd = sd(Sepal.Length))


# Categorical -------------------------------------------------------------

## General ----
freq(iris$Species)

## Based on other variables
iris %>% 
  filter(Sepal.Length > 6) %>% 
  freq(Species)

iris %>% 
  filter(Sepal.Length > 6) %>% 
  count(Species)

