## ===========================================================================#
## Install packages and update R
## Author: Tengku Muhd Hanis Mokhtar
## Date: 21-10-2023
## https://jomresearch.netlify.app/
## ===========================================================================#


# Install necessary package -----------------------------------------------

pckg <- c("installr", "tidyverse", "naniar", "summarytools", "skimr")
install.packages(pckg, dependencies = TRUE)


# Update R ----------------------------------------------------------------

installr::updateR() #only for R dekstop, not for Posit Cloud
