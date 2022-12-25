```
Tugas Praktek: Menggunakan INNER JOIN (1/3)
Sejauh ini aku belum memiliki pertanyaan berarti dan semoga saja tidak ada. Dalam hati kuberdoa kelancaran pembelajaran ini juga sampai ke kuis dan tugasnya, hehehe.

“Kita lanjut penjelasannya ya, Aksara,” ujar Senja menarikku kembali ke materi.

“Nah, sebelumnya kan kita sudah menerapkan penggunaan … WHERE …; dari perintah SELECT … dan operator koma, untuk penggabungan tabel ms_item_warna dan ms_item_kategori. Selanjutnya, ini kita akan menggunakan klausa INNER JOIN … ON …; untuk menggabungkan kedua ms_item_warna dan ms_item_kategori berdasarkan sintaks INNER JOIN yang telah dijelaskan sebelumnya.”

SELECT * FROM ms_item_warna
INNER JOIN ms_item_kategori
ON ms_item_warna.nama_barang = ms_item_kategori.nama_item;

Jika dijalankan dan tidak ada kesalahan pada penulisan query-nya, maka hasilnya akan terlihat sebagai berikut.

+-------------+--------------+-----------+----------+
| nama_barang | warna        | nama_item | kategori |
+-------------+--------------+-----------+----------+
| bayam       | hijau        | bayam     | sayuran  |
| duku        | kuning pekat | duku      | buah     |
| durian      | kuning       | durian    | buah     |
| gandum      | coklat       | gandum    | buah     |
| jambu air   | merah        | jambu air | buah     |
| jeruk       | oranye       | jeruk     | buah     |
+-------------+--------------+-----------+----------+

Hasil yang diperoleh dengan penggunaan SELECT … FROM … INNER JOIN … ON …; adalah sama dengan penerapan SELECT … FROM … WHERE …;.
```

SELECT * FROM ms_item_warna
INNER JOIN ms_item_kategori
ON ms_item_warna.nama_barang = ms_item_kategori.nama_item;

```
STDOUT

+-------------+--------------+-----------+----------+
| nama_barang | warna        | nama_item | kategori |
+-------------+--------------+-----------+----------+
| bayam       | hijau        | bayam     | sayuran  |
| duku        | kuning pekat | duku      | buah     |
| durian      | kuning       | durian    | buah     |
| gandum      | coklat       | gandum    | buah     |
| jambu air   | merah        | jambu air | buah     |
| jeruk       | oranye       | jeruk     | buah     |
+-------------+--------------+-----------+----------+

```