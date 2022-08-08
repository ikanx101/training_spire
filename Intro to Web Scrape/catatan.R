# membersihkan global environment
rm(list=ls())

# memanggil semua libraries yang dibutuhkan
library(rvest)     # untuk web scraping
library(dplyr)     # untuk data carpentry
library(openxlsx)  # untuk menuliskan data dalam bentuk xlsx

# ===================================================================
# membaca teks
url = "https://www.fimela.com/food/read/5014705/resep-nasi-goreng-madura"

# proses parsing html
parsing = 
  url %>% 
  read_html()

# mengambil judul
parsing %>% 
  html_nodes(".entry-title") %>% 
  html_text(trim = T)

# mengambil author
parsing %>% 
  html_nodes(".read-page--header--author__name") %>% 
  html_text(trim = T)

# mengambil bahan
parsing %>% 
  html_nodes("ul:nth-child(4) li") %>% 
  html_text(trim = T)

# mengambil bumbu oseng
parsing %>% 
  html_nodes("ul:nth-child(6) li") %>% 
  html_text(trim = T)

# ===================================================================
# membaca links
url = "https://tekno.kompas.com/gadget"

url %>% 
  read_html() %>% 
  html_nodes("a") %>% 
  html_attr("href")

# ===================================================================
# membaca tabel
url = "https://www.worldometers.info/coronavirus/"

url %>% 
  read_html() %>% 
  html_table(fill = T)

# ===================================================================
# jsonlite
library(jsonlite)

api = "https://datasekolahapi.herokuapp.com/api/data/sd/jakarta"
df = read_json(api)

new = df$Pesanggrahan
new[[1]]  


api = "https://quran.kemenag.go.id/api/v1/ayatweb/1/0/0/10"
df = read_json(api)

api = "https://data.bmkg.go.id/DataMKG/TEWS/autogempa.json"
df = read_json(api)

api = "https://pemilu2019.kpu.go.id/static/json/hhcw/ppwp.json"
df = read_json(api)

api = "https://pemilu2019.kpu.go.id/static/json/dapil/dprri.json"
df = read_json(api)


