# Fungsi Aggregate
“Aksara, sepertinya aku lupa menunjukkan tabel fungsi aggregate padamu. Sebentar.”

Aku mengalihkan perhatianku dari layar laptop dan mendorong bangku mendekati Senja. “Ya?”

 

“Seperti yang sudah dijelaskan bahwa fungsi aggregate ini digunakan untuk melakukan perhitungan pada sekelompok nilai. Biar lebih jelas kita akan mempraktikkan penggunaan fungsi aggregate di SQL dengan menggunakan fungsi - fungsi aggregate yang umum digunakan. Tapi sebelumnya, kamu simak saja dulu tabel fungsinya ini.”

<img src="https://raw.githubusercontent.com/fahzafahmi/latihan-sql/master/Certification/DQLab/assets/Data%20Analyst%20Career%20Track/2.%20Fundamental%20SQL%20Using%20FUNCTION%20and%20GROUP%20BY/3.%20Fungsi%20Aggregate%20dan%20Group%20By/1.%20FungsiAgregat.png">
<br/><br/>

# Pengenalan GROUP BY
“Nja, kamu perlu bilang kalau kita akan mengolah data penjualan tahun lalu bukan?”

“Iya, ada apa?”

“Kalau sudah ada datanya, kita pasti butuh mengelompokkannya dan menghitungnya berdasarkan penjualan setiap provinsi maupun dikelompokkan per bulan. Kalau kayak begitu kasusnya, pakai SQL bagaimana caranya ya?”

 

“Gambaranmu bagus sekali, Aksara. Saya bantu jelaskan ya. Untuk mengelompokkan data di SQL kita menggunakan GROUP BY Statement. GROUP BY statement akan mengelompokkan data yang bernilai sama ke dalam satu group, dan dengan menggunakan fungsi aggregate seperti (COUNT, MAX, MIN, SUM, AVG) kita bisa melakukan agregasi untuk untuk setiap group atau kelompok yang terbentuk. Biar lebih jelas, coba pelajari penulisan syntax-nya,” jelas Senja.

 

Aku pun menyimak syntax yang diberikan:

<img src="https://raw.githubusercontent.com/fahzafahmi/latihan-sql/master/Certification/DQLab/assets/Data%20Analyst%20Career%20Track/2.%20Fundamental%20SQL%20Using%20FUNCTION%20and%20GROUP%20BY/3.%20Fungsi%20Aggregate%20dan%20Group%20By/2.%20TabelGroupBy.png">


Hal penting yang perlu diperhatikan adalah: 
<ol>
<li>GROUP BY digunakan dengan SELECT, artinya kolom yang digunakan di GROUP BY statement, juga perlu ditempatkan di SELECT.</li>
<li>GROUP BY ditempatkan setelah WHERE, tetapi jika tidak menggunakan WHERE maka langsung ditempatkan setelah FROM. </li>
<li>Jika menggunakan ORDER BY, maka GROUP BY ditempatkan sebelum ORDER BY. </li>
</ol>

 “Apakah kita bisa menggunakan group by untuk mengelompokkan data menggunakan 2 kriteria atau 2 kolom, Nja?” tanyaku penasaran.

  “Tentu saja bisa. Group by bisa dilakukan dengan single column ataupun multiple column. Seperti ini contohnya:”
<ul>
<li>Group by Single Column, data dikelompokkan menggunakan kriteria dari satu kolom saja, misalnya mengelompokkan data berdasarkan provinsi saja.</li>
<li>Group by Multiple Column, data dikelompokkan menggunakan kriteria dari dua kolom atau lebih, misalnya mengelompokkan data berdasarkan province dan brand.</li>
</ul>

# Penggunaan CASE … WHEN….
 “Wah, terima kasih Senja, aku sudah mulai paham menggunakan fungsi aggregate di SQL. Tapi aku mau tanya deh, kalau aku diminta untuk menambahkan kolom rekomendasi atau remark dari hasil agregasi data, misalnya nilai penjualan bulan Maret 2019 lebih dari 30M, maka diberikan rekomendasi/remark “Target Achieved”, kalau kurang diberi remark “Follow Up”. Bagaimana melakukannya di SQL ya? 

“Itu mudah saja, Aksara. Itu bisa kamu lakukan dengan CASE - statement di SQL. CASE - statement ini sama dengan IF - THEN - ELSE di pemrograman pada umumnya. Syntax dari CASE – statement seperti ini. Coba lihat.”

<img src="https://raw.githubusercontent.com/fahzafahmi/latihan-sql/master/Certification/DQLab/assets/Data%20Analyst%20Career%20Track/2.%20Fundamental%20SQL%20Using%20FUNCTION%20and%20GROUP%20BY/3.%20Fungsi%20Aggregate%20dan%20Group%20By/3.%20CaseWhen.png">

CASE - Statement ditempatkan sesudah SELECT, berikut syntax-nya secara lengkap :

```sql
SELECT ColumnName1, ColumnName2,  
CASE  
    WHEN condition1 THEN result1  
    WHEN condition2 THEN result2  
    WHEN conditionN THEN resultN  
    ELSE result  
END as alias  
FROM TableName;
```

CASE-statement akan mengevaluasi kondisi yang sudah ditentukan, dimulai dari condition1, dan akan mengembalikan hasil (result1), jika condition1 terpenuhi (TRUE). Jika tidak, maka condition2 akan dievaluasi, dan akan mengembalikan result2 jika condition2 terpenuhi, dst. Apabila tidak ada kondisi yang terpenuhi, maka result pada bagian ELSE yang akan dikembalikan. 

Nah, silahkan praktikkan penggunaan CASE-Statement untuk membuat remark pada data aggregasi penjualan.