# Pendahuluan
Aku terlonjak kaget ketika merasakan sentuhan tangan di balik pundakku. Ternyata Senja. Dahinya mengernyit, menatapku penuh tanya. “Kamu tampak kebingungan, Aksara. Ada masalah?”

Hening sejenak. Aku menimbang-nimbang apakah akan menyampaikan kegelisahanku pada Senja. Kutengok jam dinding di seberang meja, sudah setengah jam aku berkutat sendiri dalam ketidaktahuan. Lebih baik bertanya.

“Ini, Nja. Aku dapet laporan mengenai transaksi penjualan produk kotak pensil dan flashdisk 32 GB cabang X. Sudah aku coba utak-atik dan lihat, aku nemuin kalau tabel data penjualannya enggak berisi kolom nama produk, jadi aku benar-benar bingung untuk mengidentifikasi tiap kategori produknya,” curhatku akhirnya.

Aku melihat Senja tersenyum dan mendorong bangku yang teronggok di pojok ke sebelahku. “Kalau kamu sudah mahir SQL ini akan mudah. Untuk mendapatkan kolom nama produk, kamu hanya perlu menggabungkan tabel data penjualan dengan tabel lain di database yang berisi detail produk termasuk nama_produk, mekanisme penggabungan ini disebut JOIN,” jelas Senja sembari mengarahkanku.

“Dengan JOIN, beberapa tabel pada suatu database bisa digabungkan satu sama lain. Kemampuan inilah sebenarnya ciri khas dan kekuatan yang membedakan RDMS dengan sistem database lain. Sudah dapat gambarannya, Aksara?” lanjut Senja.

Kepala mengangguk sedikit. Aku perlu mempraktikkan sendiri agar lebih jelas. Seperti tahu keinginan dan maksudku, Senja mengajakku untuk menyelesaikan studi kasus lebih sederhana.

“Oke, mari kita coba praktikkan penggunaannya lebih konkrit dengan dua contoh tabel sederhana, yaitu ms_item_warna dan ms_item_category, sehingga kita dapat dengan mudah memahami penggunaan JOIN. Jadi, kamu juga lebih mudah menyelesaikan kasus tadi.”

“Siap!” Mataku berbinar.

# Tabel pertama: ms_item_warna
“Oke, contoh tabel pertama yang akan kita gunakan sebagai bahan latihan adalah tabel **ms_item_warna** seperti terlihat berikut ini,” bimbing Senja sambil memperlihatkan layar laptopnya padaku:

<img src="https://raw.githubusercontent.com/fahzafahmi/latihan-sql/master/Certification/DQLab/assets/Data%20Analyst%20Career%20Track/3.%20Fundamental%20SQL%20Using%20INNER%20JOIN%20and%20UNION/1.%20Penggabungan%20Tabel%20dari%20Relasi%20Kolom/1.%20ms_item_warna.png">
 
“Tabel ini terdiri dari dua kolom yang berisi informasi nama buah atau sayuran dengan warnanya, dan memiliki delapan baris data,” ujar Senja.

“Lalu, bagaimana langkah selanjutnya?” tanyaku menunggu.

“Selanjutnya, jika permasalahan kita adalah ingin mengetahui informasi tidak hanya mengenai warna tetapi juga jenis/kategori dari setiap nama barang apakah tergolong sayuran atau buah, maka kita tidak dapat memperoleh informasi tersebut jika hanya berdasarkan tablel ms_item_warna. Oleh karena itu, kita perlu menghubungkan tabel tersebut dengan tabel lain yang berisi informasi tersebut, yaitu tabel **ms_item_kategori.**”

# Tabel kedua: ms_item_kategori
“Perhatikan kembali ya, Aksara. Kalau ini contoh tabel kedua, yakni tabel **ms_item_kategori** seperti terlihat berikut ini.”

<img src="https://raw.githubusercontent.com/fahzafahmi/latihan-sql/master/Certification/DQLab/assets/Data%20Analyst%20Career%20Track/3.%20Fundamental%20SQL%20Using%20INNER%20JOIN%20and%20UNION/1.%20Penggabungan%20Tabel%20dari%20Relasi%20Kolom/2.%20ms_item_kategori.png">
 
Tabel ini terdiri dari dua kolom yang berisi informasi nama tumbuhan dengan kategorinya, dan memiliki delapan baris data.

“Nah, sekarang kita telah memiliki tabel kedua yaitu tabel ms_item_kategori yang memiliki delapan baris data dan berisi informasi mengenai nama tumbuhan dengan kategorinya. Sama seperti permasalahan di tabel sebelumnya, jika kita hanya memiliki tabel ms_item_kategori maka kita tidak dapat memperoleh informasi mengenai nama dan warna tumbuhan. Oleh karena itu, kita bisa menggabungkan kedua tabel tersebut menjadi satu tabel baru yang berisi informasi lengkap mengenai nama, warna dan kategori setiap barang/item, “ tambah Senja.

Aku mengangguk paham.

“Kalau sudah cukup mengerti contoh dua tabel tadi, kamu bisa kerjakan tugas praktik dan kuisnya. Saya akan memperhatikan.”

Aku pun kembali mengambil alih laptop.

# Key Columns
Penjelasan selanjutnya adalah mengenai key columns dan bagaimana penggunaannya dalam menggabungkan kedua tabel.

Perhatikan kembali tabel **ms_item_warna** dan **ms_item_kategori** yang telah ditemui pada pembahasan sebelumnya.

<img src="https://raw.githubusercontent.com/fahzafahmi/latihan-sql/master/Certification/DQLab/assets/Data%20Analyst%20Career%20Track/3.%20Fundamental%20SQL%20Using%20INNER%20JOIN%20and%20UNION/1.%20Penggabungan%20Tabel%20dari%20Relasi%20Kolom/3.%20Key%20Columns.png">

Dari rangkaian pembahasan sebelumnya, dapat disimpulkan bahwa kedua tabel tersebut memiliki hubungan/relasi yaitu pada kolom **nama_barang** (tabel ms_item_warna) dan kolom ** nama_item (tabel ms_item_kategori) karena banyak kecocokan dari isi data.

 Kedua kolom ini untuk selanjutnya disebut sebagai **kolom kunci** atau **key columns**.

 # Penjelasan Query Penggabungan Tabel
Penggabungan dua tabel menjadi satu tabel baru menggunakan query **SELECT** pada subbab sebelumnya dilakukan dengan cara berikut:
<ul>
<li>menuliskan dua nama tabel yang akan digunakan dengan dipisahkan operator koma (,).</li>
<li>menuliskan pasangan key columns dengan penghubung operator sama dengan (=) di bagian filter atau kondisi.</li>
</ul>

Berikut adalah gambaran detil syntax penggunaan cara di atas:

<img src="https://raw.githubusercontent.com/fahzafahmi/latihan-sql/master/Certification/DQLab/assets/Data%20Analyst%20Career%20Track/3.%20Fundamental%20SQL%20Using%20INNER%20JOIN%20and%20UNION/1.%20Penggabungan%20Tabel%20dari%20Relasi%20Kolom/4.%20Penjelasan%20Query%20Penggabungan%20Tabel.png">

Cara join seperti ini disebut dengan cara join menggunakan **operator koma**.

# Penjelasan Hasil Penggabungan Tabel
Sejauh ini aku tidak menemukan masalah yang signifikan, tapi ketika berusaha menggabungkan tabel aku masih kesulitan. Untungnya Senja masih di sampingku.

“Nja, aku mau nanya. Jika aku amati, penggabungan tabel menghasilkan enam baris data. Sedangkan di kedua tabel asal masing-masing memiliki delapan baris data. Lalu, kenapa bisa berkurang dua baris data?” tanyaku penasaran.

“Untuk menjawab pertanyaan tersebut, cobalah perhatikan gambar berikut,” jawab Senja lugas langsung memberi penjelasan lengkap bersama visualnya

<img src="https://raw.githubusercontent.com/fahzafahmi/latihan-sql/master/Certification/DQLab/assets/Data%20Analyst%20Career%20Track/3.%20Fundamental%20SQL%20Using%20INNER%20JOIN%20and%20UNION/1.%20Penggabungan%20Tabel%20dari%20Relasi%20Kolom/5.%20Penjelasan%20Hasil%20Penggabungan%20Tabel.png">

Dua tabel di bagian atas yaitu tabel **ms_item_kategori** dan tabel **ms_item_warna** merupakan tabel sumber data, dan bagian bawah adalah tabel hasil penggabungan dari kedua tabel tersebut.

Dari tabel hasil penggabungan terlihat bahwa baris data yang muncul hanyalah baris data yang isi datanya terdapat di kedua key columns, dan data yang isinya cocok untuk kedua tabel jumlahnya hanya enam dari total delapan baris data yang ada. Sedangkan baris data yang berisi belimbing, jamur, apel dan daun bawang, tidak terdapat di kedua tabel, sehingga baris data ini akan di-exclude dan tidak akan muncul di tabel hasil penggabungan.

# Penjelasan Proses Penggabungan Tabel
Mari diperhatikan kembali gambar di bawah ini untuk penjelasan proses penggabungan.

<img src="https://raw.githubusercontent.com/fahzafahmi/latihan-sql/master/Certification/DQLab/assets/Data%20Analyst%20Career%20Track/3.%20Fundamental%20SQL%20Using%20INNER%20JOIN%20and%20UNION/1.%20Penggabungan%20Tabel%20dari%20Relasi%20Kolom/6.%20Penjelasan%20Proses%20Penggabungan%20Tabel.png">

Panah berwarna magenta menunjukkan proses pencocokan dan penggabungan data. Sebagai contoh: Baris data pertama dengan isi “**bayam**” pada key column **nama_item** (tabel **ms_item_kategori**), akan mencari isi yang sama di key column **nama_barang** (tabel **ms_item_warna**), dan ditemukan pada baris kedua kemudian dihubungkan menjadi satu baris di tabel baru hasil penggabungan.

Pencocokan dengan pencarian ini berdasarkan bagian kondisi (conditional clause) pada query yang ditandai dengan warna kuning berikut.

<img src="https://raw.githubusercontent.com/fahzafahmi/latihan-sql/master/Certification/DQLab/assets/Data%20Analyst%20Career%20Track/3.%20Fundamental%20SQL%20Using%20INNER%20JOIN%20and%20UNION/1.%20Penggabungan%20Tabel%20dari%20Relasi%20Kolom/6a.%20Penjelasan%20Proses%20Penggabungan%20Tabel.png">

Setelah seluruh data ditemukan dengan kondisi ini, dan jika tidak menentukan spesifik kolom maka seluruh kolom data dari kedua tabel akan dimunculkan dengan isi/baris data yang sama dan terdapat di kedua key column digabungkan menjadi satu baris pada tabel baru. 

Isi data yang ditandai dengan warna merah adalah data yang tidak memiliki pasangan sehingga tidak bisa digabungkan, dan dengan demikian tidak memiliki data gabungan pada hasil akhir.

Cara pencocokan dan penggabungan disebut dengan INNER JOIN - dimana isi dari key column kedua tabel harus cocok satu sama lain baru dapat digabungkan.

Penjelasan Senja selalu lengkap seperti biasa. Aku mengintip buku catatan dari sudut mataku, tak terasa sudah sekitar tiga halaman habis oleh coretan tanganku. Malam ini harus kurapikan nih!

“Satu lagi, Aksara. Saya perhatikan kamu suka sekali mencatat, jangan kelewat soal ini: jika kamu biasa bekerja dengan Excel, proses ini hampir menyerupai penggunaan fungsi **vlookup**. Jadi harusnya sudah terbiasa.”

Aku terkekeh, “Hehehe, iya. Biar rapi. Biasanya aku taruh di buku diari juga.”

“Metode belajarmu unik juga, Aksara. Kuisnya jangan lupa dikerjakan.”

Aku mengangguk sambil mengangkat jari membentuk kata ‘peace’. Setelah kutelusuri lagi lebih dalam, tak hanya ada kuis saja tapi juga banyak sekali materi-materi baru lainnya! Mumpung Senja masih di sini, aku harus belajar ‘ngebut’ agar bisa bertanya kalau ada yang bingung.