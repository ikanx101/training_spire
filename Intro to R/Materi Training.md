---
title       : Training Data Science
subtitle    : Introduction to Web Scraping using R
author      : Ikang Fadhli
job         : ikanx101.com
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, quiz, bootstrap] # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
logo        : spire.png
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

