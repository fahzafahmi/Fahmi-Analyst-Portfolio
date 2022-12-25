```
Penggabungan Tanpa Kondisi
Sesuai dugaanku. Aku kembali menemukan hal yang membingungkan. Dan, tampaknya hari ini Senja memang sudah mendedikasikan waktunya untuk mengajariku karena (beruntungnya!) Senja masih tepat di sebelahku.

“Nja, hehehe. Sorry mau ganggu lagi. Bagaimana kalau aku ingin menggabungkan tabel tanpa ada kondisi? Apakah tetap bisa memakai metode ini?”

Senja memicingkan matanya pada layar laptop yang kutunjuk sebelum menjawab. “Pertanyaan bagus. Penjelasan dan praktek yang kita lakukan pada materi sebelumnya adalah penggabungan dua tabel dengan menggunakan kondisi, yaitu terdapat data yang sama pada key kolom dari kedua tabel. Akan tetapi, memang benar, dalam beberapa case di real problem, sering kali terdapat permasalahan tertentu dimana kita ingin menggabungkan tabel tanpa ada kondisi. Proses penggabungan ini juga dapat dilakukan dengan metode koma dan tanpa menggunakan kondisi relasi antar kolom.”

Aku mencoba mencerna penjelasan Senja. Sebelum aku sempat memahami semuanya. Senja sudah mengajakku untuk melihat contoh.

“Berikut adalah contoh query dari penggabungan seperti itu.”

SELECT * FROM ms_item_kategori, ms_item_warna;

“Terlihat pada query kita hanya menyertakan nama dua tabel yang akan diambil datanya, tapi tidak ada informasi kondisi bagaimana kedua tabel tersebut berelasi satu dengan yang lainnya melalui key column. Lalu apa hasilnya?” tanya Senja retoris.

“Kamu hanya butuh untuk mengetik  query ini pada code editor dan jalankan, jika berhasil dengan baik maka akan muncul hasil dengan enam puluh empat baris data seperti berikut.”

Aku memperhatikan dengan saksama. Jangan sampai ada yang terlewat!

+-----------+----------+-------------+--------------+
| nama_item | kategori | nama_barang | warna        |
+-----------+----------+-------------+--------------+
| bayam     | sayuran  | apel        | merah        |
| belimbing | buah     | apel        | merah        |
| duku      | buah     | apel        | merah        |
| durian    | buah     | apel        | merah        |
| gandum    | buah     | apel        | merah        |
| jamur     | sayuran  | apel        | merah        |
| jambu air | buah     | apel        | merah        |
| jeruk     | buah     | apel        | merah        |
| bayam     | sayuran  | bayam       | hijau        |
| belimbing | buah     | bayam       | hijau        |
| duku      | buah     | bayam       | hijau        |
| durian    | buah     | bayam       | hijau        |
| gandum    | buah     | bayam       | hijau        |
| jamur     | sayuran  | bayam       | hijau        |
| jambu air | buah     | bayam       | hijau        |
| jeruk     | buah     | bayam       | hijau        |
| bayam     | sayuran  | daun bawang | hijau        |
| belimbing | buah     | daun bawang | hijau        |
| duku      | buah     | daun bawang | hijau        |
| durian    | buah     | daun bawang | hijau        |
| gandum    | buah     | daun bawang | hijau        |
| jamur     | sayuran  | daun bawang | hijau        |
| jambu air | buah     | daun bawang | hijau        |
| jeruk     | buah     | daun bawang | hijau        |
| bayam     | sayuran  | duku        | kuning pekat |
| belimbing | buah     | duku        | kuning pekat |
| duku      | buah     | duku        | kuning pekat |
| durian    | buah     | duku        | kuning pekat |
| gandum    | buah     | duku        | kuning pekat |
| jamur     | sayuran  | duku        | kuning pekat |
| jambu air | buah     | duku        | kuning pekat |
| jeruk     | buah     | duku        | kuning pekat |
| bayam     | sayuran  | durian      | kuning       |
| belimbing | buah     | durian      | kuning       |
| duku      | buah     | durian      | kuning       |
| durian    | buah     | durian      | kuning       |
| gandum    | buah     | durian      | kuning       |
| jamur     | sayuran  | durian      | kuning       |
| jambu air | buah     | durian      | kuning       |
| jeruk     | buah     | durian      | kuning       |
| bayam     | sayuran  | gandum      | coklat       |
| belimbing | buah     | gandum      | coklat       |
| duku      | buah     | gandum      | coklat       |
| durian    | buah     | gandum      | coklat       |
| gandum    | buah     | gandum      | coklat       |
| jamur     | sayuran  | gandum      | coklat       |
| jambu air | buah     | gandum      | coklat       |
| jeruk     | buah     | gandum      | coklat       |
| bayam     | sayuran  | jambu air   | merah        |
| belimbing | buah     | jambu air   | merah        |
| duku      | buah     | jambu air   | merah        |
| durian    | buah     | jambu air   | merah        |
| gandum    | buah     | jambu air   | merah        |
| jamur     | sayuran  | jambu air   | merah        |
| jambu air | buah     | jambu air   | merah        |
| jeruk     | buah     | jambu air   | merah        |
| bayam     | sayuran  | jeruk       | oranye       |
| belimbing | buah     | jeruk       | oranye       |
| duku      | buah     | jeruk       | oranye       |
| durian    | buah     | jeruk       | oranye       |
| gandum    | buah     | jeruk       | oranye       |
| jamur     | sayuran  | jeruk       | oranye       |
| jambu air | buah     | jeruk       | oranye       |
| jeruk     | buah     | jeruk       | oranye       |
+-----------+----------+-------------+--------------+
 

Aku menggumam mengerti. Terlihat banyak sekali hasil yang keluar, ini dikarenakan setiap baris data pada kedua tabel akan dihubungkan satu sama lain - tanpa ada hubungan.

Jumlah enam puluh empat baris data ini adalah hasil perkalian dari jumlah data dari kedua tabel, dimana masing-masing memiliki delapan baris data. Cara menggabungkan kedua tabelseperti ini disebut dengan mekanisme cross join.

Aku sudah sampai di penghujung materi dan sejauh ini cukup paham! Hanya butuh satu kuis lagi untuk menuntaskannya. Belajar memang jadi lebih mudah kalau ada Senja, eh maksudku mentor, hehehe.
```

SELECT * FROM ms_item_kategori, ms_item_warna;

```
STDOUT

+-----------+----------+-------------+--------------+
| nama_item | kategori | nama_barang | warna        |
+-----------+----------+-------------+--------------+
| bayam     | sayuran  | apel        | merah        |
| belimbing | buah     | apel        | merah        |
| duku      | buah     | apel        | merah        |
| durian    | buah     | apel        | merah        |
| gandum    | buah     | apel        | merah        |
| jamur     | sayuran  | apel        | merah        |
| jambu air | buah     | apel        | merah        |
| jeruk     | buah     | apel        | merah        |
| bayam     | sayuran  | bayam       | hijau        |
| belimbing | buah     | bayam       | hijau        |
| duku      | buah     | bayam       | hijau        |
| durian    | buah     | bayam       | hijau        |
| gandum    | buah     | bayam       | hijau        |
| jamur     | sayuran  | bayam       | hijau        |
| jambu air | buah     | bayam       | hijau        |
| jeruk     | buah     | bayam       | hijau        |
| bayam     | sayuran  | daun bawang | hijau        |
| belimbing | buah     | daun bawang | hijau        |
| duku      | buah     | daun bawang | hijau        |
| durian    | buah     | daun bawang | hijau        |
| gandum    | buah     | daun bawang | hijau        |
| jamur     | sayuran  | daun bawang | hijau        |
| jambu air | buah     | daun bawang | hijau        |
| jeruk     | buah     | daun bawang | hijau        |
| bayam     | sayuran  | duku        | kuning pekat |
| belimbing | buah     | duku        | kuning pekat |
| duku      | buah     | duku        | kuning pekat |
| durian    | buah     | duku        | kuning pekat |
| gandum    | buah     | duku        | kuning pekat |
| jamur     | sayuran  | duku        | kuning pekat |
| jambu air | buah     | duku        | kuning pekat |
| jeruk     | buah     | duku        | kuning pekat |
| bayam     | sayuran  | durian      | kuning       |
| belimbing | buah     | durian      | kuning       |
| duku      | buah     | durian      | kuning       |
| durian    | buah     | durian      | kuning       |
| gandum    | buah     | durian      | kuning       |
| jamur     | sayuran  | durian      | kuning       |
| jambu air | buah     | durian      | kuning       |
| jeruk     | buah     | durian      | kuning       |
| bayam     | sayuran  | gandum      | coklat       |
| belimbing | buah     | gandum      | coklat       |
| duku      | buah     | gandum      | coklat       |
| durian    | buah     | gandum      | coklat       |
| gandum    | buah     | gandum      | coklat       |
| jamur     | sayuran  | gandum      | coklat       |
| jambu air | buah     | gandum      | coklat       |
| jeruk     | buah     | gandum      | coklat       |
| bayam     | sayuran  | jambu air   | merah        |
| belimbing | buah     | jambu air   | merah        |
| duku      | buah     | jambu air   | merah        |
| durian    | buah     | jambu air   | merah        |
| gandum    | buah     | jambu air   | merah        |
| jamur     | sayuran  | jambu air   | merah        |
| jambu air | buah     | jambu air   | merah        |
| jeruk     | buah     | jambu air   | merah        |
| bayam     | sayuran  | jeruk       | oranye       |
| belimbing | buah     | jeruk       | oranye       |
| duku      | buah     | jeruk       | oranye       |
| durian    | buah     | jeruk       | oranye       |
| gandum    | buah     | jeruk       | oranye       |
| jamur     | sayuran  | jeruk       | oranye       |
| jambu air | buah     | jeruk       | oranye       |
| jeruk     | buah     | jeruk       | oranye       |
+-----------+----------+-------------+--------------+

```