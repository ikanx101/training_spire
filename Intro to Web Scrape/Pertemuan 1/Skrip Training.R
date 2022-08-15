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
    baca %>% html_nodes(".detail__title") %>% html_text(trim = T)

  # membaca author
  wartawan = 
    baca %>% html_nodes(".detail__author") %>% html_text(trim = T)
  
  # membaca timestamp dari berita
  waktu = 
    baca %>% html_nodes(".detail__date") %>% html_text(trim = T)

  # membaca isi berita 
  isi_berita = 
    baca %>% html_nodes(".itp_bodycontent") %>% html_text(trim = T)

# keterangan terkait string di R
# string \n --> spasi enter ke bawah, \t \r --> tab 

# sekarang kita akan membuat tabel (dataframe) dari kumpulan single values
data_final = data.frame(judul,
                        wartawan,
                        waktu,
                        isi_berita)
  
# misalkan kita ingin mengekspor data_final ke dalam excel
# cara pertama: save ke dalam bentuk .csv
write.csv(data_final,
          "hasil scrape.csv")

# cara kedua: save ke dalam bentuk .xlsx
# kita menggunakan library tambahan
  install.packages("openxlsx")

library(openxlsx)
write.xlsx(data_final,
           file = "hasil scrape detik.xlsx")  
  

# ==============================================================================
# kita akan buat custom function bernama detik_scraper dari algoritma yang sudah 
  # kita tulis di atas
detik_scraper = function(url_berita){
  baca = url_berita %>% read_html()
  judul = 
    baca %>% html_nodes(".detail__title") %>% html_text(trim = T)
  wartawan = 
    baca %>% html_nodes(".detail__author") %>% html_text(trim = T)
  waktu = 
    baca %>% html_nodes(".detail__date") %>% html_text(trim = T)
  isi_berita = 
    baca %>% html_nodes(".itp_bodycontent") %>% html_text(trim = T)
  data_final = data.frame(judul,
                          wartawan,
                          waktu,
                          isi_berita)
  return(data_final)
}

# ==============================================================================
# mengambil semua url yang ada pada suatu website
url_utama = "https://news.detik.com/"

# scrape semua link dari url_utama
links = url_utama %>% read_html() %>% html_nodes("a") %>% html_attr("href")

# filtering yang diinginkan
links_filtered = links[grepl("https://news.detik.com/berita/d",links)] # bisa baca reguler expression di materi pdf
links_filtered = links_filtered[1:50] # hanya mengambil top 10 links berita terbaru

# scrape ke 50 link tersebut
temp = vector("list",50)
for(i in 1:50){
  temp[[i]] = detik_scraper(links_filtered[i])
}

# gabung semua hasil
kompilasi_berita = do.call(rbind,temp)
