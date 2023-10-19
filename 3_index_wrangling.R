## ===========================================================================#
## Indexing and data wrangling in R
## Author: Tengku Muhd Hanis Mokhtar
## Date: 21-10-2023
## https://jomresearch.netlify.app/
## ===========================================================================#


# Packages ----------------------------------------------------------------

library(tidyverse)

# Packages in tidyverse
tidyverse_packages()


# Data frame --------------------------------------------------------------

# Data frame or tibble ----
df <- data.frame(col1 = 1:5, col2 = letters[1:5])

df2 <- tibble(col1 = 1:5, col2 = letters[1:5])

df3 <- tribble(
  ~col1, ~col2,
  1,"a",
  2,"b",
  3,"c",
  4,"d",
  5,"e"
  )

class(df); class(df2); class(df3)

# trible with a list column
df4 <- tribble(
  ~x,  ~y,
  "a", 1:3,
  "b", df
  )

df4; class(df4)


# Datasets ----------------------------------------------------------------

# Data in R
data()
iris

str(iris) #base R
glimpse(iris) #tidyverse


# Operations on data frame ------------------------------------------------

## 1- Select/deselect columns and rows ----
iris$Sepal.Length[1:5]
iris[1:5,c(1,2)]
iris[1:5, "Sepal.Length"]
iris[1:5, -1]

iris %>% 
  select(Sepal.Length, Sepal.Width) %>% 
  slice(1:5)
iris %>% 
  select(-Sepal.Length, -Sepal.Width) %>% 
  slice(1:5)

## 2- Filter ----
index <- iris$Species == "setosa"
iris[index, ]

iris %>% 
  filter(Species == "setosa")

## 3- Mutate (transmute replace the variable) ----
iris$Sepal.Lengthx2 <- iris$Sepal.Length * 2

iris <- 
  iris %>% 
  mutate(Sepal.Lengthx3 = Sepal.Length * 3)

view(iris)

## 4- Arrange ----
head(iris[order(-iris$Sepal.Width),], 10)

iris %>% 
  arrange(desc(Petal.Length)) %>% 
  top_n(10)

## 5- Rename ----
colnames(iris)[6] <- "HANIS"
head(iris)

iris %>% 
  rename(TENGKU = HANIS) %>% 
  top_n(5)

## 6- tidy/long and wide format ----
?fish_encounters
fish_encounters

### 6.1- Long --> wide ----
fish_wide <- fish_encounters %>%
  pivot_wider(names_from = station, values_from = seen)
fish_wide

### 6.2- Wide --> tidy/long ----
fish_tidy <- fish_wide %>% 
  pivot_longer(cols = 2:12, names_to = "monitor_station", values_to = "pass_through")
fish_tidy
