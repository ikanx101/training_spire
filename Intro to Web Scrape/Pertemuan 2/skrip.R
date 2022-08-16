# bebersih
rm(list=ls())

library(rvest)
library(dplyr)

# piping %>% --> then
# R ada dua mazhab cara ngoding
  # 1. data.table --> sum(mean(max()))
  # 2. tidyverse --> max %>% mean %>% sum

# scrape bentuk tabel

url = "https://www.worldometers.info/coronavirus/"

semua_tabel = url %>% read_html() %>% html_table(fill = T)

semua_tabel[[1]] %>% View()
semua_tabel[[2]] %>% View()
semua_tabel[[3]] %>% View()

df_covid = semua_tabel[[1]]

# pertama
df_covid =
  df_covid %>% janitor::clean_names()

df_covid = 
  df_covid %>% 
  select(number,country_other,total_cases,total_recovered)

df_covid = 
  df_covid %>% 
  filter(!is.na(number)) %>% 
  mutate(total_cases = gsub("\\,","",total_cases),
         total_recovered = gsub("\\,","",total_recovered),
         total_cases = as.numeric(total_cases),
         total_recovered = as.numeric(total_recovered)
  )

save(df_covid,file = "covid.rda")
