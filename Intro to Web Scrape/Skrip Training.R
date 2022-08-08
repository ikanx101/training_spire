# ==============================================================================
# skrip training web scraping untuk SPIRE
# by: ikang
# tgl 8 agustus 2022

# ==============================================================================
# untuk membersihkan global environment
rm(list=ls())

# untuk install libraries
# install.packages("rvest")
# install.packages("dplyr")

# libraries parsing html
library(dplyr) # berguna untuk data carpentry / data manipulation
library(rvest) # berguna untuk parsing html

# dplyr ini adalah satu bagian dari yg namanya tidyverse --> dplyr, plyr, rvest, tidymodels, tidytext
# di R, itu ada dua aliran (mazhab) untuk melakukan data carpentry:
  # 1. prinsip tidy --> %>% (ini dibacanya "then...") 
  # 2. prinsip data.table --> function_1(function_2(function_3()))
