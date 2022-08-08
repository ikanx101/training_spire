# ==============================================================================
# skrip training web scraping untuk SPIRE
# by: ikang
# tgl 8 agustus 2022

# ==============================================================================
# untuk membersihkan global environment
rm(list=ls())

# libraries parsing html
library(dplyr) # berguna untuk data carpentry / data manipulation
library(rvest) # berguna untuk parsing html

# untuk install libraries
install.packages("rvest")
install.packages("dplyr")