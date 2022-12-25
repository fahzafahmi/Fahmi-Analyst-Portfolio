# Fungsi Scalar vs Fungsi Aggregate
“Bagian fungsi nih, Nja. Boleh kasih tahu perannya apa dalam pengolahan data?” Aku mulai bertanya.

“Oke, begini Aksara. Fungsi adalah metode yang digunakan untuk melakukan operasi data di database. Operasi ini bisa berupa kalkulasi numerik seperti sum, count, avg, etc; atau operasi non-numerik seperti string concatenations dan sub-strings. SQL Function dapat dibagi ke dalam 2 kategori, yaitufungsi scalar dan fungsi aggregate.”

Penjelasan Senja mengundang pertanyaan baru di benakku.

 

“Hm, apa aja sih bedanya fungsi skalar dan fungsi aggregate?”

“Fungsi skalar dalam SQL digunakan untuk mengembalikan nilai tunggal (single value) dari suatu nilai input yang diberikan, sedangkan fungsi agregat dalam SQL digunakan untuk melakukan perhitungan pada sekelompok nilai dan kemudian mengembalikan nilai tunggal. Nah, biar lebih mudah dipahami mari kita bahas dan praktekkan fungsi-fungsi dari kedua kategori ini.”

# Fungsi Skalar Matematika
“Nja, ini aku nemu jenis fungsi lain. Fungsi skalar matematika. Ini apa yah?” sahutku sekali lagi.

“Kamu sudah belajar sampai fungsi skalar ya, Aksara. Oke  kalau begitu fungsi skalar pertama yang akan kita bahas adalah fungsi skalar untuk numerik value. Fungsi ini umumnya digunakan jika kita ingin melakukan operasi matematika di SQL secara cepat dan efektif. Di SQL sendiri ada banyak fungsi matematika,” jelas Senja rinci.

 

“Memangnya fungsi-fungsi apa saja yang bisa dilakukan di SQL?”

“Untuk mengecek fungsi-fungsi apa saja yang bisa dilakukan di SQL, kita bisa membuka dokumentasi fungsi SQL di sini: https://www.postgresql.org/docs/9.5/functions-math.html, untuk postgresql database dan di sini: https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html, untuk mysql database. Nah, sebagai bahan praktik kamu agar lebih paham kamu bisa coba beberapa fungsi saja yang umumnya digunakan seperti ini,” ujar Senja sambil mengajakku menyimak isi tampilan layar laptopnya:
<img src="https://raw.githubusercontent.com/fahzafahmi/latihan-sql/master/Certification/DQLab/assets/Data%20Analyst%20Career%20Track/2.%20Fundamental%20SQL%20Using%20FUNCTION%20and%20GROUP%20BY/1.%20Fungsi%20di%20SQL/1.%20NamaFungsi.png">

Untuk memudahkan pemahaman, aku diberikan Senja tabel dummy berisi nilai siswa semester 1 dan 2 di suatu sekolah. Berikut contoh penggunaan fungsi skalar dengan menggunakan tabel dummy: 

Tabel: **students**
<img src="https://raw.githubusercontent.com/fahzafahmi/latihan-sql/master/Certification/DQLab/assets/Data%20Analyst%20Career%20Track/2.%20Fundamental%20SQL%20Using%20FUNCTION%20and%20GROUP%20BY/1.%20Fungsi%20di%20SQL/2.%20TabelStudents.png">