rm(list=ls())

library(rvest)
library(dplyr)

setwd("~/SPIRE Training/Intro to Web Scrape/Pertemuan 2/save html")

saved_pages = list.files(pattern = "*.html")

scrape_nama = function(url){
  nama_produk = 
    url %>% 
    read_html() %>% 
    html_nodes(".css-1320e6c") %>% 
    html_text(trim = T)
  return(nama_produk)
}


for(i in 1:11){
  temp = scrape_nama(saved_pages[i])
  print(temp)
}

i = 2
scrape_nama(saved_pages[i])

# ===============================
library(jsonlite)
df = read_json("https://quran.kemenag.go.id/api/v1/ayatweb/1/0/0/10")

df$data
