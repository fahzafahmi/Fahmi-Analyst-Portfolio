```

Project UNION
Persiapkanlah data katalog mengenai mengenai nama - nama produk yang akan dijual di suatu store. Data tersebut akan digunakan dalam meeting untuk mereview produk mana saja yang akan dilanjutkan penjualannya dan mana yang tidak akan dilanjutkan.

Siapkan hanya data produk dengan harga di bawah 100K untuk kode produk prod-1 sampai prod-5; dan dibawah 50K untuk kode produk prod-6 sampai prod-10, tanpa mencantumkan kolom no_urut.

Saat mengecek data produk di database, terdapat 2 tabel yang sama - sama berisi data katalog, yaitu:

 

Tabel ms_produk_1

+---------+-------------+--------------------------+--------+
| no_urut | kode_produk | nama_produk              | harga  |
+---------+-------------+--------------------------+--------+
|       1 | prod-01     | Kotak Pensil DQLab       |  62500 |
|       2 | prod-02     | Flashdisk DQLab 64 GB    |  55000 |
|       3 | prod-03     | Gift Voucher DQLab 100rb | 100000 |
|       4 | prod-04     | Flashdisk DQLab 32 GB    |  40000 |
|       5 | prod-05     | Gift Voucher DQLab 250rb | 250000 |
+---------+-------------+--------------------------+--------+

Tabel ms_produk_2

+---------+-------------+------------------------------------+-------+
| no_urut | kode_produk | nama_produk                        | harga |
+---------+-------------+------------------------------------+-------+
|       6 | prod-06     | Pulpen Multifunction + Laser DQLab | 92500 |
|       7 | prod-07     | Tas Travel Organizer DQLab         | 48000 |
|       8 | prod-08     | Gantungan Kunci DQLab              | 15800 |
|       9 | prod-09     | Buku Planner Agenda DQLab          | 92000 |
|      10 | prod-10     | Sticky Notes DQLab 500 sheets      | 55000 |
+---------+-------------+------------------------------------+-------+

```

SELECT nama_produk, kode_produk, harga FROM ms_produk_1
WHERE harga < 100000
UNION SELECT nama_produk, kode_produk, harga FROM ms_produk_2
WHERE harga < 50000;

```
STDOUT

+----------------------------+-------------+-------+
| nama_produk                | kode_produk | harga |
+----------------------------+-------------+-------+
| Kotak Pensil DQLab         | prod-01     | 62500 |
| Flashdisk DQLab 64 GB      | prod-02     | 55000 |
| Flashdisk DQLab 32 GB      | prod-04     | 40000 |
| Tas Travel Organizer DQLab | prod-07     | 48000 |
| Gantungan Kunci DQLab      | prod-08     | 15800 |
+----------------------------+-------------+-------+

```