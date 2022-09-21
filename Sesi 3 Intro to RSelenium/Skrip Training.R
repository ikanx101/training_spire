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
  
  # advantages:
    # reliable (bisa untuk situs dengan login atau 2 step verification)
  # disadvantages:
    # slow

  # Kali ini kita akan melakukan web scraping dari situs grab food
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


# ===============================================================================
# memulai selenium
  # kita akan panggil
versi_chrome = "105.0.5195.19" # ini kita harus pastikan versi chrome nya tersedia
driver =  RSelenium::rsDriver(browser = "chrome",
                              chromever = versi_chrome) 
remote_driver = driver[["client"]] 

# sampai baris ini, seharusnya sudah terbuka chrome-nya

# membuka situs dari url
remote_driver$navigate(url)

# ===============================================================================
# kita akan membuat function untuk klik "tampilkan lebih banyak"
  # kita akan minta selenium mencari button dengan css = .ant-btn-block
  # lalu diklik berulang kali

# find css
css = ".ant-btn-block"
next_klik = remote_driver$findElement("css", css)

# klik berulang kali
for(i in 1:4){
  next_klik$clickElement()
  Sys.sleep(3)
}


# ===============================================================================
# TAHAP I
# sekarang kita akan mengambil semua link dari merchant yang ada
# caranya adalah dengan menggabungkan rvest dengan si RSelenium

urls = 
  remote_driver$getPageSource()[[1]] %>%   # ini adalah bagian RSelenium membuka pagesource
  read_html() %>%                          # ini bagian rvest: membaca html
  html_nodes("a") %>%                      # ini bagian rvest: mencari urls
  html_attr("href")                        # ini bagian rvest: mencari urls


# di sini kita akan filter hanya mengambil link dari merchant
urls = urls[grepl("id/restaurant",urls)]

# di sini saya tambahin link merchant agar lengkap
urls = paste0("https://food.grab.com",urls)

# ===============================================================================
# TAHAP II
# kita akan ambil semua informasi merchant di masing-masing urls
  # langkahnya simpel:
    # 1. suruh selenium buka urls
    # 2. suruh selenium membuka pagesource
    # 3. kita scrape dengan rvest

# kita set sebagai contoh membuka situs pertama dari urls
i = 1

# membuka situs dari url
remote_driver$navigate(urls[i])

# membuka pagesource dari situs merchant
baca = remote_driver$getPageSource()[[1]]

# kita lanjut untuk parsing html menggunakan rvest  
  # nama restoran
    nama_merchant = 
      baca %>% 
      read_html() %>% 
      html_nodes(".name___1Ls94") %>% 
      html_text()

  # kategori merchant
    kategori_merchant = 
      baca %>% 
      read_html() %>% 
      html_nodes(".cuisine___3sorn") %>% 
      html_text()

    # rating merchant
    rating_merchant = 
      baca %>% 
      read_html() %>% 
      html_nodes(".ratingText___1Q08c") %>% 
      html_text()
    
    # jarak
    jarak = 
      baca %>% 
      read_html() %>% 
      html_nodes(".distance___3UWcK div") %>%
      html_text()
    
    # jam buka
    jam_buka = 
      baca %>% 
      read_html() %>% 
      html_nodes(".openHoursText___9q0va") %>%
      html_text()
    
    # nama menu
    nama_menu = 
      baca %>% 
      read_html() %>% 
      html_nodes(".itemNameDescription___38JZv") %>% 
      html_text()

    # harga
    harga = 
      baca %>% 
      read_html() %>% 
      html_nodes(".discountedPrice___3MBVA") %>%
      html_text()

# gabung ke dataframe
result_data = data.frame(nama_merchant,kategori_merchant,rating_merchant,jarak,jam_buka,
                         nama_menu,harga)


































