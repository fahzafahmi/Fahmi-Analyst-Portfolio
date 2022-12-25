```

Menggunakan UNION dengan Klausa WHERE
Aku bertanya pada Senja, “Terus, kalo ada kondisi WHERE, syntaxnya bagaimana? Misalnya aku hanya ingin menggabungkan tabel yang isinya data penjualan untuk kode produk prod-04 saja?”

 

”Mudah saja, tinggal tambahkan WHERE di kedua SELECT-statement, seperti berikut ini,”

SELECT * FROM tabel_A
WHERE kode_produk = 'prod-04'
UNION
SELECT * FROM tabel_B
WHERE kode_produk = 'prod-04';

Jika query-nya dengan benar dituliskan dan kemudian dijalankan maka akan diperoleh:

+----------------+----------------+---------+-------------+-----------------------+------+-------+--------+
| kode_transaksi | kode_pelanggan | no_urut | kode_produk | nama_produk           | qty  | harga | total  |
+----------------+----------------+---------+-------------+-----------------------+------+-------+--------+
| tr-001         | dqlabcust07    |       4 | prod-04     | Flashdisk DQLab 32 GB |    3 | 40000 | 120000 |
| tr-004         | dqlabcust03    |       2 | prod-04     | Flashdisk DQLab 32 GB |    4 | 40000 | 160000 |
| tr-005         | dqlabcust05    |       3 | prod-04     | Flashdisk DQLab 32 GB |    2 | 40000 |  80000 |
+----------------+----------------+---------+-------------+-----------------------+------+-------+--------+

Tugas Praktek:

Lakukanlah hal yang sama dengan yang dicontohkan, akan dipilih kode_pelanggan = 'dqlabcust03' sebagai kondisinya. 

Jika query-nya diketikkan dengan benar maka tabel penggabungan yang tampil dengan kondisi kode_pelanggan = 'dqlabcust03' adalah:

```

SELECT * FROM tabel_A
WHERE kode_pelanggan = 'dqlabcust03'
UNION
SELECT * FROM tabel_B
WHERE kode_pelanggan = 'dqlabcust03';

```
STDOUT

+----------------+----------------+---------+-------------+-------------------------------+------+-------+--------+
| kode_transaksi | kode_pelanggan | no_urut | kode_produk | nama_produk                   | qty  | harga | total  |
+----------------+----------------+---------+-------------+-------------------------------+------+-------+--------+
| tr-003         | dqlabcust03    |       1 | prod-02     | Flashdisk DQLab 64 GB         |    2 | 55000 | 110000 |
| tr-004         | dqlabcust03    |       1 | prod-10     | Sticky Notes DQLab 500 sheets |    5 | 55000 | 275000 |
| tr-004         | dqlabcust03    |       2 | prod-04     | Flashdisk DQLab 32 GB         |    4 | 40000 | 160000 |
+----------------+----------------+---------+-------------+-------------------------------+------+-------+--------+

```