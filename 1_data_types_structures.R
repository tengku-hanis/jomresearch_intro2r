## ===========================================================================#
## Data types and data structures in R
## Author: Tengku Muhd Hanis Mokhtar
## Date: 21-10-2023
## https://jomresearch.netlify.app/
## ===========================================================================#


# Data types --------------------------------------------------------------

## 1) Character ----
name <- c("hanis", "hafizah")

# How to check data types
class(name)
typeof(name)
str(name)

## 2) Numeric ----
number <- c(1.2,3)

class(number)

## 3) Integer ----
int1 <- 1:3
int2 <- 2L

class(int1); class(int2)

## 4) Logical ----
logi <- c(TRUE, F)

class(logi)

## 5) Complex ----
comp <- 1+4i

class(comp)


# Data structures ---------------------------------------------------------

## 1) Atomic vector ----
vc <- 1:10
vc

dim(vc)

## 2) Matrix ----
mt <- matrix(1:10, nrow = 5, ncol = 2)
mt

class(mt)
dim(mt)

## 3) Array ----
ary <- array(1:10, dim = c(5, 2, 3))
ary

class(ary)
dim(ary)

## 4) Data frame ----
class(iris) # existing data frame in R

str(iris)
class(iris)

## 4) List ----
ls <- list(df = iris, 
           vec = vc,
           mat = mt,
           arr = ary)

class(ls)
str(ls)

