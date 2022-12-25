```
Fungsi Aggregate dengan Grouping
“Tambahan lagi, Aksara. Kamu masih ingatkan fungsi agregasi yang kita pelajari dan praktikkan sebelumnya? Pada fungsi itu kita belum menggunakan group by sehingga hasil SUM dan COUNT kita adalah hasil SUM dan COUNT dari seluruh baris yang ada di tabel data penjualan.”

“Ada data penjualannya kah, Nja? Biar lebih mudah membayangkan dan mempraktikkannya,” usulku.

 

Senja membuka data penjualan perusahaan tahun lalu untukku. Wow!

“Kalau begitu, kita praktik langsung saja. Sekarang coba kamu gunakan fungsi agregasi dan GROUP BY untuk menghitung total penjualan dari setiap provinsi di tahun 2019, dan kita bandingkan dengan hasil fungsi agregasi tanpa menggunakan group by,” pinta Senja.

 

Contoh aggregate dengan grouping: 

+--------------------+--------------------+--------------+
| province           | total_unique_order | revenue      |
+--------------------+--------------------+--------------+
| Aceh               |                 16 |    575100000 |
| Bali               |                454 |  12555567000 |
| Bangka Belitung    |                  8 |    378494000 |
| Banten             |                596 |  14925141000 |
| DKI Jakarta        |               8332 | 183872878000 |
| Jambi              |                 55 |   3030991000 |
| Jawa Barat         |               2831 |  62982148000 |
| Jawa Tengah        |               1475 |  40508136000 |
| Jawa Timur         |               1406 |  28809529000 |
| Kalimantan Barat   |                 18 |    423139000 |
| Kalimantan Selatan |                 26 |   1195590000 |
| Kalimantan Tengah  |                275 |  13057098000 |
| Lampung            |                 37 |   1226267000 |
| NTB                |                  5 |    146872000 |
| Riau               |                 91 |   2138244000 |
| Sulawesi Selatan   |                384 |  12822560000 |
| Sulawesi Tengah    |                 53 |   2326860000 |
| Sulawesi Utara     |                 41 |   1278392000 |
| Sumatra Barat      |                 92 |   1852032000 |
| Sumatra Selatan    |                121 |   5224917000 |
| Sumatra Utara      |                145 |   3710699000 |
| unknown            |                 57 |   8256525000 |
| Yogyakarta         |               1318 |  27181441000 |
+--------------------+--------------------+--------------+

```

SELECT province, COUNT(DISTINCT order_id) AS total_unique_order,
SUM(item_price) AS revenue FROM sales_retail_2019
GROUP BY province;