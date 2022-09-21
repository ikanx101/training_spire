setwd("~/Documents/Training SPIRE/Sesi 3 Intro to RSelenium")

library(dplyr)
library(rvest)
library(RSelenium)

rm(list=ls())

url = "https://food.grab.com/id/id/"

# memulai selenium
driver =  RSelenium::rsDriver(browser = "chrome",
                              chromever = "105.0.5195.19")
remote_driver = driver[["client"]] 

# membuka situs google maps
remote_driver$navigate(url)



# function untuk next page
next_page = function(){
  css = ".ant-btn-block"
  next_klik = remote_driver$findElement("css", css)
  next_klik$clickElement()
}

scrape_all_page = function(){
  urls = 
    remote_driver$getPageSource()[[1]] %>% 
    read_html() %>% 
    html_nodes("a") %>% 
    html_attr("href")
  urls = urls[grepl("id/restaurant",urls)]
  urls = paste0("https://food.grab.com",urls)
  return(urls)
}

links_all = scrape_all_page()
