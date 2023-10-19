## ===========================================================================#
## Basic plot in R
## Author: Tengku Muhd Hanis Mokhtar
## Date: 21-10-2023
## https://jomresearch.netlify.app/
## ===========================================================================#

# Packages ----------------------------------------------------------------

library(tidyverse)


# Data --------------------------------------------------------------------

glimpse(iris)


# Plot in Base R ----------------------------------------------------------

## 1) Histogram ----
hist(iris$Sepal.Length)

## 2) Bar plot ----
dat <- 
  iris %>% 
  group_by(Species) %>% 
  summarise(mean_Sepal.Length = mean(Sepal.Length))

barplot(height = dat$mean_Sepal.Length, names = dat$Species)

## 3) Box plot ----
bx_plt <- boxplot(iris$Sepal.Width)
bx_plt$out

boxplot.stats(iris$Sepal.Width)

## 4) Scatter plot ----
plot(iris$Sepal.Length, iris$Sepal.Width)


# ggplot2 -----------------------------------------------------------------

## 1) histogram ----
ggplot(data = iris, aes(x = Sepal.Length)) +
  geom_histogram()

# Advanced histogram
ggplot(data = iris, aes(x = Sepal.Length)) +
  geom_histogram(alpha = 0.6) +
  facet_grid(rows = vars(Species)) +
  theme_bw()
  
ggplot(data = iris, aes(x = Sepal.Length, fill = Species, color = Species)) +
  geom_histogram(alpha = 0.6) +
  theme_bw()

## 2) Bar plot ----
ggplot(data = iris, aes(x = Species)) +
    geom_bar()

## 3) Box plot ----
bx_ggplot <- 
    ggplot(data = iris, aes(y = Sepal.Width)) +
    geom_boxplot()
bx_ggplot

boxplot.stats(iris$Sepal.Width)

# Advanced box plot
ggplot(data = iris, aes(x = Species, y = Sepal.Width)) +
  geom_boxplot()

ggplot(data = iris, aes(y = Sepal.Width)) +
  geom_boxplot() +
  facet_grid(cols = vars(Species))

## 4) Scatter plot ----
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() 

# Advanced scatter plot
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  geom_smooth() +
  theme_bw()

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  geom_smooth() +
  facet_grid(rows = vars(Species)) +
  theme_bw()


