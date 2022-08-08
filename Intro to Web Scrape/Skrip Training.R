# ==============================================================================
# skrip training web scraping untuk SPIRE
# by: ikang
# tgl 8 agustus 2022

# ==============================================================================
# untuk membersihkan global environment
rm(list=ls())

# untuk install libraries (cukup sekali saja saat pertama kali install R Studio)
# install.packages("rvest")
# install.packages("dplyr")

# libraries parsing html
library(dplyr) # berguna untuk data carpentry / data manipulation
library(rvest) # berguna untuk parsing html

# dplyr ini adalah satu bagian dari yg namanya tidyverse --> dplyr, plyr, rvest, tidymodels, tidytext
# di R, itu ada dua aliran (mazhab) untuk melakukan data carpentry:
  # 1. prinsip tidy --> %>% (ini dibacanya "then...") 
  # 2. prinsip data.table --> function_1(function_2(function_3()))

# ==============================================================================
# kita memulai web scraping

# langkah 1:
  # simpan url ke dalam R environment
url = "https://news.detik.com/berita/d-6222306/jokowi-dampak-perubahan-iklim-memburuk-7-tahun-terakhir-suhu-terpanas"

# langkah 2:
  # parsing html-nya lalu disimpan dalam object tertentu
baca =          # ingin menyimpan hasil parsing html ke dalam object bernama "baca"
  url %>%       # url then
  read_html()   # read html

# setiap hasil pembacaan parsing html akan berbentuk list

# langkah 3:
  # membaca title
  judul = 
    baca %>% 
    html_nodes(".detail__title") %>% 
    html_text(trim = T)

  # membaca author
  wartawan = 
    baca %>% 
    html_nodes(".detail__author") %>% 
    html_text(trim = T)
  
  # membaca timestamp dari berita
  waktu = 
    baca %>% 
    html_nodes(".detail__date") %>% 
    html_text(trim = T)

  # membaca isi berita 
  isi_berita = 
    baca %>% 
    html_nodes(".itp_bodycontent") %>% 
    html_text(trim = T)

# keterangan terkait string di R
# string \n --> spasi enter ke bawah, \t \r --> tab 



