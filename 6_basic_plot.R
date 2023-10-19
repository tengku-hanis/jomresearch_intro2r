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

## Histogram ----
hist(iris$Sepal.Length)

## Bar plot ----
dat <- 
  iris %>% 
  group_by(Species) %>% 
  summarise(mean_Sepal.Length = mean(Sepal.Length))

barplot(height = dat$mean_Sepal.Length, names = dat$Species)

## Box plot ----
bx_plt <- boxplot(iris$Sepal.Width)
bx_plt$out

boxplot.stats(iris$Sepal.Width)

## Scatter plot ----
plot(iris$Sepal.Length, iris$Sepal.Width)


# ggplot2 -----------------------------------------------------------------

## histogram ----
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

## Bar plot ----
ggplot(data = iris, aes(x = Species)) +
    geom_bar()

## Box plot ----
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
  
ggplot(data = iris, aes(x = Species, y = Sepal.Width)) +
  geom_boxplot() +
  stat_summary(aes(label = row.names(iris) %>% as.vector()),
               geom = "text", 
               fun = function(y) { o <- boxplot.stats(y)$out; if(length(o) == 0) NA else o },
               hjust = -1
               )




## Scatter plot ----
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


