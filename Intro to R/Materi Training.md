---
title       : Training Data Science
subtitle    : Introduction to Web Scraping using R
author      : Ikang Fadhli
job         : find me at ikanx101.com
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, quiz, bootstrap] # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
logo        : R logo.png
biglogo     : spire.png
assets      : {assets: ../../assets}
--- 


<style type="text/css">
body {background:grey transparent;
}
</style>



    



--- .segue bg:grey

# _INTRODUCTION_

--- .class #id

## _Introduction_ __R__

**R** merupakan salah satu bahasa pemrograman yang biasa digunakan untuk
menyelesaikan permasalahan terkait dengan data. Kita bisa membuat model
prediksi (*machine learning*, *artificial intelligence*, dan *deep
learning*) sampai membuat algoritma automasi menggunakan **R**.

Salah satu kelebihan **R** adalah:

> R is made by statistician for statistician.

Biasanya *package* atau *library* yang di-*launching* di **R**
disertakan dengan jurnal ilmiah sehingga kita bisa dengan yakin
memakainya.

**R** tersedia secara *open source* sehingga *software* ini gratis dan
dikembangkan secara massal oleh komunitas-komunitas di seluruh dunia.
Sehingga *package* atau *library* yang disediakan untuk analisis
statistika dan analisa numerik juga sangat lengkap dan terus bertambah
setiap saat.

--- .class #id

## Fitur dan Karakteristik

Sama halnya dengan bahasa pemograman lainnya. Berbeda bahasa berarti berbeda peraturan / cara menulis _code_ (algoritma). Tapi jangan khawatir, dengan memanfaatkan _tidy principle_ di __R__, kita bisa menulis algoritma dengan mudah (bagi kita dan pembaca algoritmanya).

> Oleh karena itu, menurut saya __R__ menawarkan _learning curve_ yang jauh lebih baik dibandingkan _Python_.
Beberapa karakter dari __R__ adalah sebagai berikut:

- Bahasa __R__ bersifat _case sensitive_. Setiap perbedaan cara penulisan (kapital vs non kapital) akan membedakan suatu objek. Contoh:


```r
x = 'Spire'
y = 'spire'
x == y
```

```
## [1] FALSE
```

--- .class #id

## Fitur dan Karakteristik

- Segala sesuatu yang ada pada program __R__ akan diangap sebagai objek. konsep objek ini sama dengan bahasa pemrograman berbasis objek yang lain seperti _Java_, _C++_, _Python_, dll. Perbedaannya adalah bahasa __R__ relatif lebih sederhana dibandingkan bahasa pemrograman berbasis objek yang lain.
- _Interpreted language_ atau _script_. Bahasa __R__ memungkinkan pengguna untuk melakukan kerja pada __R__ tanpa perlu melakukan _compile_ menjadi _executionable_ file (.exe).
- Mendukung proses _loop_, _decision making_, dan menyediakan berbagai jenis operator (aritmatika, logika, dll).
- Mendukung _export_ dan _import_ berbagai _format file_, seperti: `.txt`, `.xlsx`, `.csv`, `.json`, `sql`, dll.
- Mudah ditingkatkan melalui penambahan fungsi atau _library_. Penambahan ini dapat dilakukan secara _online_ melalui __CRAN__ atau melalui sumber seperti __github__.
- Menyediakan berbagai fungsi untuk keperluan visualisasi data. Visualisasi data pada __R__ dapat menggunakan _library_ bawaan atau lainnya seperti `ggplot2`, `ggvis`, `plotly`, dll.

--- .class #id

## Kelebihan __R__

Selain karena __R__ dapat digunakan secara gratis terdapat kelebihan lain yang ditawarkan, antara lain:

1. _Protability_, penggunaan _software_ dapat digunakan kapanpun tanpa terikat oleh masa berakhirnya lisensi.
2. _Multiplatform_, __R__ bersifat _Multiplatform Operating Systems_, dimana __R__ bisa dijalankan di OS manapun. Baik Windows, iOS, Linux, Raspbian, bahkan [Android](https://passingthroughresearcher.wordpress.com/2019/07/30/install-r-3-5-2-di-android/)! Dengan fitur yang sama (tidak ada perbedaan fitur di semua OS).
3. _Programable_, pengguna dapat membuat fungsi dan metode baru atau mengembangkan modifikasi dari analisis statistika yang telah ada pada sistem __R__.
4. Fasiltas grafik yang lengkap.

--- .class #id

## Kekurangan __R__

Adapun kekurangan dari R antara lain:

* _Point and Click GUI_, interaksi utama dengan __R__ bersifat __CLI__ (_Command Line Interface_), walaupun saat ini telah dikembangkan _library_ yang memungkinkan kita berinteraksi dengan __R__ menggunakan __GUI__ (_Graphical User Interface_) sederhana menggunakan `library(R-Commander)` yang memiliki fungsi yang terbatas.

--- .class #id

## R vs R Studio

Pada dasarnya, _software_ __R__ bisa di-_download_ dan di-_install_ langsung dari situs [CRAN](https://cran.r-project.org/bin/windows/base/). _Software_ __R__ ini bersifat __CLI__.

> Bayangkan Anda membuka aplikasi __notepad__. Putih dan bersih kan? 
Seperti itulah _software_ __R__.

Bagi Kamu yang kaget dan tidak terbiasa melihat tampilan yang _intimidating_ seperti itu, Kamu bisa meng-_install software_ __R Studio__. Sebuah _software_ GUI yang bisa membuat __R__ terlihat lebih _user friendly_. __R Studio__ bisa di-_download_ [di sini](https://rstudio.com/products/rstudio/download/). 

> Tapi tolong diperhatikan bahwa __R Studio__ hanya tambahan tampilan dari __R__ standar. Jadi Kamu tetap harus meng- _install_ __R__ yah!


--- .class #id

## R Studio

Kelebihan R Studio antara lain:

1. _Free_, kita bisa memilih versi gratis dari __R Studio__ tanpa ada pengurangan fitur dasar dari __R__.
2. _R Studio Cloud_, tersedia layanan _cloud_ sehingga bisa diakses dan digunakan menggunakan _browser_ di _gadget_ manapun. Layanan _cloud_ ini bisa diakses [di sini](https://rstudio.cloud) dan dikoneksikan ke akun __github__ Kamu. 
3. _Shiny Apps_, kita bisa membuat _apps_ berbasis _web_ dari __R__. _Apps_ ini bisa dijadikan _dashboard_ atau mesin kalkulasi otomatis. Tergantung seberapa jauh Kamu membuat _coding_ algoritmanya.
4. _R Markdown_, ini fitur yang paling saya sukai. Bahkan untuk menulis _web_ ini, saya menggunakan _R Markdown_. Output files -nya beragam, mulai dari `docx`, `pptx`, `pdf`, `html`, `md`, dll. Bahkan kita bisa membuat [_e-book_](https://bookdown.org/) dengan memanfaatkan `library(bookdown)`.

Jadi, setelah membaca bagian ini pastikan Kamu sudah meng- _install_ __R__ dan __R Studio__ yah. Jangan sampai terbalik urutan instalasinya!

--- .segue bg:grey

# _LET's GET STARTED_

--- .class #id

## Mengenal operator dasar

Beberapa operator dasar di __R__ antara lain:

- `=` atau `<-`, digunakan untuk melakukan pendefinisian suatu objek. Contoh:


```r
a = 10
b <- 3
a + b
```

```
## [1] 13
```

--- .class #id

## Mengenal operator dasar

- `' '` atau `" "`, digunakan untuk menandai tipe variabel berupa `character`. Lalu apa beda penggunaan `' '` dengan `" "`? `" "` digunakan saat `'` dibutuhkan dalam suatu `character`. Contoh:


```r
a = 'saya hendak pergi ke pasar'
b = "i don't want to buy it"
a
```

```
## [1] "saya hendak pergi ke pasar"
```

```r
b
```

```
## [1] "i don't want to buy it"
```


--- .class #id

## Mengenal operator dasar

- `==`, `<`, `>`, `<=`, atau `>=`, digunakan untuk mengecek apakah dua variabel itu memiliki kesamaan atau tidak. _Output_ dari operator ini adalah `logic` (_TRUE or FALSE_). Contoh:


```r
a = 5
b = 3
a == b
```

```
## [1] FALSE
```

```r
a > b
```

```
## [1] TRUE
```

--- .class #id

## Mengenal operator dasar

- `;` atau _<enter>_, digunakan untuk memisahkan baris kode pada skrip algoritma. Contoh:


```r
a = 5;b = 3;a*b
```

```
## [1] 15
```

--- .class #id

## Working Directory

Apa itu _working directory_?

> _Working directory_ adalah _folder path default_ untuk __R__ melakukan _import_ dan _export_ data.
Untuk mengetahui di mana _working directory_ kita, bisa digunakan perintah:


```r
getwd()
```

```
## [1] "/cloud/project/Intro to R"
```

Secara _default_, __R__ menggunakan `C:\\My Documents` sebagai _working directory_.

--- .class #id

## Working Directory

> Bagaimana mengubah _working directory_?

_Working directory_ bisa diubah sesuai kemauan kita memanfaatkan perintah `setwd()`, tanda dalam kurung diisi dengan _folder path_ yang diinginkan.


```r
setwd("/cloud/project/Intro to R")
```

> Apa keuntungan mengubah-ubah _working directory_?

Perubahan _working directory_ akan sangat berguna saat kita ingin memgambil data dari _folder path_ tertentu dan menyimpan hasil analisa kita ke _folder path_ yang berbeda.


--- .class #id

## Mengenal _packages_ atau _library_

`packages` atau `library` adalah sekumpulan fungsi yang telah dibuat dan dibakukan untuk kemudian disertakan di halaman _web_ CRAN atau github. `library` bisa kita _install_ dan gunakan dengan mudah.

Seperti yang sudah saya infokan di bagian pendahuluan. Banyak orang atau komunitas yang mengembangkan berbagai macam `library` sehingga memudahkan kita untuk menyelesaikan masalah di data kita. Kita tidak perlu lagi membuat algoritma dari nol. Cukup memanfaatkan `library` yang tepat saja.

--- .class #id

## Mengenal _packages_ atau _library_

Beberapa contoh _libraries_ yang sering saya gunakan:

1. `dplyr`: _data carpentry_ menggunakan _tidy principle_.
2. `ggplot2`: _data visualization_.
3. `rvest`: _web scraping_.
4. `tidytext`: _text analysis_.
5. `reshape2`: _data manipulation_.
6. `readxl` atau `openxlsx`: _export_ dan _import_ _excel files_.
7. `officer`: membuat _Ms. Office files_ seperti _excel_, _docx_, dan _powerpoint_.
8. `expss`: __SPSS__ di __R__.
8. `xaringan`: membuat _file_ presentasi berformat `html`.

--- .class #id

## Instalasi _Packages_

`library` di __R__ bisa di-_install_ dengan mudah dengan menggunakan perintah `install.packages('nama packages')`. Tanda dalam kurung diisi `character` nama `library`. Bisa menggunakan `" "` atau `' '`. 

Proses instalasi `library` ini membutuhkan koneksi internet karena __R__ akan otomatis terhubung ke dalam situs _web_ __CRAN__. Setelah proses instalasi selesai, maka koneksi internet tidak diperlukan lagi (kecuali untuk melakukan _web scraping_). 

Contoh:

`install.packages('readxl')`

`install.packages("rvest")`

--- .class #id

## Mengaktifkan _Packages_

`library` yang sudah di-_install_ bisa diaktifkan dengan menggunakan perintah `library(nama packages)` tanpa menggunakan tanda `" "` atau `' '`.

Pengaktifan `library` cukup dilakukan sekali saja di awal pengerjaan _project_ (tidak perlu dilakukan berulang kali). Contoh:


```r
library(dplyr)
```

```
## 
## Attaching package: 'dplyr'
```

```
## The following objects are masked from 'package:stats':
## 
##     filter, lag
```

```
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```


--- .class #id

## Serba-Serbi Tentang _Packages_

Beberapa `library` saat diaktifkan akan menghasilkan pesan tertentu seperti di atas. Hal ini merupakan sesuatu yang __normal__ terjadi.

Untuk beberapa `library` ada kemungkinan (kecil) ditemukan kasus saat mereka tidak kompatibel. Akibatnya beberapa fungsi perintah di `library` tersebut akan menjadi kacau.

Misalnya pada saat kita memanggil `library(tidyverse)` dan `library(plyr)`, maka perintah `filter()` yang dimiliki `tidyverse` akan tidak berjalan dengan baik. 

--- .class #id

## Serba-Serbi Tentang _Packages_

Ada beberapa solusi yang bisa kita lakukan:

- Selalu mengaktifkan `library` sesuai dengan urutannya. Biasanya setiap kali kita mengaktifkan `library` akan muncul _warnings_ mengenai kompatibilitas `library` tersebut dengan `library` lain.
- Menonaktikan `library` yang sudah tidak perlu digunakan dengan perintah:

`detach("package:tidytext", unload = TRUE)`

- Memanggil `library` tanpa harus mengaktifkannya. Kita bisa melakukannya dengan menggunakan tanda `nama packages::`. Contoh:

`reshape2::melt(data)`

--- .class #id

## _Help_

Setiap `library` yang telah di-_install_ dan aktif disertai dengan fitur _help_ yang berfungsi sebagai informasi kepada _user_. Jika kita ingin mengetahui bagaimana isi dari perintah suatu fungsi, kita bisa gunakan perintah `help(nama fungsi)` atau `?nama fungsi`. _Help_ akan muncul pada tab _help_ di __R Studio__. Contoh:


```r
help(sum)
```

atau


```r
?sum
```


--- .class #id

## _Example_

Selain _help_, kita bisa melihat contoh pemakaian dari suatu fungsi di __R__ dengan menggunakan perintah `example()`. Contoh:


```r
example(sum)
```

```
## 
## sum> ## Pass a vector to sum, and it will add the elements together.
## sum> sum(1:5)
## [1] 15
## 
## sum> ## Pass several numbers to sum, and it also adds the elements.
## sum> sum(1, 2, 3, 4, 5)
## [1] 15
## 
## sum> ## In fact, you can pass vectors into several arguments, and everything gets added.
## sum> sum(1:2, 3:5)
## [1] 15
## 
## sum> ## If there are missing values, the sum is unknown, i.e., also missing, ....
## sum> sum(1:5, NA)
## [1] NA
## 
## sum> ## ... unless  we exclude missing values explicitly:
## sum> sum(1:5, NA, na.rm = TRUE)
## [1] 15
```

--- .segue bg:grey

# Mulai Bekerja dengan __R__

--- .class #id

## Mengenal Data

Sebelum memulai bekerja dengan __R__, ada baiknya saya jelaskan dan ingatkan kembali beberapa hal penting terkait data. Dengan demikian, kita bisa memilih jenis analisa statistika apa yang tepat untuk tipe-tipe data yang berbeda.

--- .class #id

## Tipe Data (statistika)

Secara statistika, berikut adalah pembagian data berdasarkan tipenya:

1. Data kualitatif: adalah data yang tidak bisa dilakukan operasi aritmatika (penjumlahan, pengurangan, pembagian, dan perkalian). Data seperti ini, kita akan sebut sebagai __data kategorik__. 
  * __Nominal__; Representasi dari sesuatu. Contoh: `gender`, `1` saya tulis sebagai `pria` dan `2` saya tulis sebagai `wanita`. 
  * __Ordinal__; Urutan dari data menjadi penting. Contoh: skala _likert_ 1 - 6.
2. Data kuantitatif: adalah data yang bisa dilakukan operasi aritmatika (penjumlahan, pengurangan, pembagian, dan perkalian). Data seperti ini, kita akan sebut sebagai __data numerik__. 
  * __Diskrit__; bilangan bulat (_integer_). 
  * __Kontinu__; bilangan _real_ (mengandung koma).

--- .class #id

## Tipe Data (__R__)

Di __R__ ada beberapa tipe data yang sering digunakan. Secara hierarki, bisa diurutkan sebagai berikut:

`character > numeric > integer > logical`

1. `character`: merupakan tipe data berupa karakter atau `string`. Semua data bisa dilihat sebagai `character`. Oleh karena itu, secara hierarki tipe data ini ditempatkan di urutan paling atas. Namun, data tipe ini tidak bisa dilakukan operasi aritmatika _yah_.
2. `numeric`: merupakan tipe data angka berupa bilangan _real_. Kalau saya boleh bilang, tipe data ini mirip dengan data numerik di poin __2.1.1__.
3. `integer`: merupakan tipe data angka berupa bilangan bulat. Sekilas mirip dengan tipe data diskrit di poin __2.1.1__. Namun di beberapa kondisi, tipe data ini bisa dijadikan data __kategorik__ sehingga kita bisa sebut tipenya menjadi `factor`.
4. `logical`: merupakan tipe data _boolean_. Hanya berisi `TRUE` atau `FALSE`. Tipe data ini sangat berguna saat kita melakukan _if conditional_, _looping_, atau membuat _regex_ (_reguler expression_).

--- .class #id

## Struktur Data di __R__

Ada beberapa bentuk struktur data di __R__, yakni: 

1. _Single value_; satu objek yang berisi satu _value_ saja.
2. _Vector_; kumpulan dari beberapa _single value(s)_ yang menjadi satu objek. Bayangkan sebagai satu buah kolom di _file Ms. Excel_.
3. _Data frame_ atau _tibble_; merupakan kumpulan dari beberapa _vectors_ yang memiliki ukuran sama. Bayangkan sebagai satu tabel di _Ms. Excel_ yang banyaknya baris di setiap kolom sama.
4. _List_; merupakan bentuk struktur data yang sangat kompleks. Berisi _multiple data_ dengan struktur bermacam-macam.

--- .class #id

## Apa gunanya kita mengetahui jenis dan struktur data di __R__?

Beberapa algoritma yang tersedia di _library_ mengharuskan kita memiliki _input_ yang ter-standar, baik dari segi jenis dan strukturnya.

Dengan mengetahui jenis dan struktur data, kita bisa lebih mudah bekerja dengan algoritma yang ada di _library_.

Contoh:

> Algoritma analisa _simple linear regression_ (`lm()`) memerlukan input berupa `data.frame()` dengan masing-masing _variables_ yang ada di dalamnya berjenis _numeric_.

--- .class #id

## Tata Cara Memberikan Nama _Object_ atau Variabel

Setiap _object_ atau variabel di __R__ bisa diberikan nama sesuai dengan keinginan kita. Tidak ada aturan baku dalam memberikan nama. 

> Tapi, dengan memberikan nama yang __tepat__ kita bisa bekerja dengan ebih cepat dan efisien.
Berikut adalah tata cara pemberian nama yang akan membuat pekerjaan kita lebih efisien:

1. Seragamkan kapital atau non kapital dari nama variabel kita. Jika menggunakan _lowercase_, maka harus konsisten di setiap data yang ada di _environment_ __R__. 
2. Hindari penggunaan spasi " ". Jika memang tidak bisa dihindari, gunakan tanda "." atau "_". 

Contoh: variabel `tinggi badan` akan lebih baik ditulis dalam bentuk `tinggi.badan` atau `tinggi_badan`.

--- .class #id

## Tata Cara Memberikan Nama _Object_ atau Variabel

Jika sudah terlanjur memiliki nama variabel yang tidak seragam atau mengandung spasi (biasanya terjadi saat kita meng- _import_ data dari sumber lain seperti: _excel_), kita bisa merapikannya dengan otomatis dengan memanfaatkan `library(janitor)` fungsi `make_clean_names()` atau `clean_names()`.


--- .segue bg:grey

# Materi __Intro to R__

Bisa kalian unduh di _link_ [berikut](https://github.com/ikanx101/belajaR/raw/master/Materi%20Training/Day%201%20-%20R%20Series/Intro%20to%20R%20Volume%203.pdf).
