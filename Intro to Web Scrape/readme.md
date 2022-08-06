Training Dasar Web Scraping Menggunakan R
================
Ikang Fadhli
06 Aug 2022

# Apa itu *Web Scraping*?

*Web scraping* adalah salah satu metode untuk mendapatkan data yang
terpampang di suatu *website*. Ada berbagai macam cara yang bisa
digunakan untuk melakukannya. Kita juga bisa menggunakan beberapa
*software* berbayar, *freemium*, dan *open source*. Masing-masing dengan
*advantages* dan *disadvantages*-nya tersendiri.

## *Softwares* untuk *Web Scraping*

Ada beberapa *softwares* yang bisa digunakan untuk melakukan *web
scraping*, yakni:

1.  [**Octoparse**](https://www.octoparse.com/).
    -   Berbayar.
    -   *Less coding*, berbentuk menu (*white box*).
2.  [**Apify**](https://apify.com/).
    -   Berbayar.
    -   *Medium coding*.
3.  **R** atau **Python**.
    -   *Open source* (gratis).
    -   *Heavy coding*.
    -   *Full customize*.

## Teknik untuk *Web Scraping*

Ada beberapa teknik *web scraping* yang bisa dilakukan:

1.  *Parsing html* dengan cara **membaca** *page source* `.html` dari
    situs yang dituju.
    1.  Kelebihan:
        1.  Proses relatif cepat (walau tergantung koneksi juga).
        2.  Bisa untuk kebanyakan situs, seperti: wikipedia, portal
            berita, blog, dst.
    2.  Kelemahan:
        1.  Harus menentukan target `css` dari situs terlebih dahulu.
        2.  Untuk beberapa situs, proses mencari objek `css` bisa jadi
            menyulitkan.
        3.  Tidak bisa digunakan untuk situs dinamis yang menggunakan
            `javascript`.
        4.  Untuk situs yang menggunakan *login*, prosesnya agak rumit.
2.  Mengambil data menggunakan **API** (*Json Reading*).
    1.  Kelebihan:
        1.  Lebih mudah dan relatif cepat.
    2.  Kelemahan:
        1.  Proses mendapatkan **API** kadang cukup rumit. Kadang
            didapatkan dengan cara mendaftar *as developer* seperti di
            *Twitter* atau mencari sendiri saat `inspect` **network**.
        2.  Biasanya data hasil *scrape* memiliki format `.json` yang
            jarang dikenal orang awam.
3.  *Mimicking browser* dengan cara membuat *bot* yang seolah-olah
    membuka *browser* tertentu dan berinteraksi seperti layaknya
    manusia.
    1.  Kelebihan:
        1.  Bisa untuk (hampir) semua situs. Termasuk *social media*
            atau situs dengan *login* yang memiliki beberapa *steps
            authetification*.
        2.  Bisa mengambil situs dinamis atau mengandung `javascript`.
    2.  Kelemahan:
        1.  Proses relatif lambat. Karena bertindak seolah-olah layaknya
            manusia membuka *browser*.
        2.  Secara *coding* lebih rumit karena harus membuat dua bagian
            algoritma: algoritma *mimick* dan algoritma *scraper* `css`.
        3.  Ini merupakan teknik *advance* dalam *web scraping*.

## *Libraries* **R** yang Digunakan

Setidaknya ada beberapa *libraries* yang saya gunakan untuk ketiga
teknik di atas:

1.  *Parsing html*: `rvest` atau `ralger`.
2.  **API**: `jsonlite` untuk membaca *file* `.json`.
3.  *Mimicking browser*: `RSelenium`.

Kali ini saya akan membahas teknik pertama dan kedua.

------------------------------------------------------------------------

# *Parsing HTML*

## `library(rvest)`

## `library(ralger)`

<https://raw.githubusercontent.com/ikanx101/ikanx101.github.io/master/_posts/web%20scraping/post.Rmd>

------------------------------------------------------------------------

# *JSON Reading*
