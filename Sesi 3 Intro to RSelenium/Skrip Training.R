# ===============================================================================
# intro to RSelenium
#
# ikanx101.com
#
#
# pastikan sudah install library RSelenium terlebih dahulu ya
#
# ===============================================================================

# cara instalasi:
# install.packages("RSelenium")




# ===============================================================================
# RSelenium merupakan metode mimicking browser sehingga sangat ampuh untuk digunakan 
  # untuk melakukan web scraping dari situs manapun.
  # Kali ini kita akan melakukan web scraping dari situs grab food.
  # Mari kita mulai...

# kita set working directory
setwd("~/Documents/Training SPIRE/Sesi 3 Intro to RSelenium")

# kita hapus global environment
rm(list=ls())

# memanggil libraries
library(dplyr)        # digunakan agar kita bisa menggunakan ` %>% `
library(rvest)        # digunakan untuk melakukan parsing html
library(RSelenium)    # digunakan untuk memanggil RSelenium

# set url grab
url = "https://food.grab.com/id/id/"