    ```

Proyek Pekerjaan - Analisis Penjualan Part 1
Aku pun membuka email proyek dari Senja sambil menyeruput boba milk tea favoritku.

 

Aksara, saya senang dengan perkembanganmu belakangan ini. Saya mau minta tolong agar kamu melakukan analisis penjualan di suatu store. Adapun laporan yang diminta sebagai berikut:

Total jumlah seluruh penjualan (total/revenue).
Total quantity seluruh produk yang terjual.
Total quantity dan total revenue untuk setiap kode produk.
```

## 1. Total jumlah seluruh penjualan (total/revenue).
SELECT SUM(total) as total 
FROM tr_penjualan;
## 2. Total quantity seluruh produk yang terjual.
SELECT SUM(qty) as qty 
FROM tr_penjualan;
## 3. Total quantity dan total revenue untuk setiap kode produk.
SELECT kode_produk, SUM(qty) as qty, SUM(total) as total 
FROM tr_penjualan
GROUP BY kode_produk;

```
STDOUT

+---------+
| total   |
+---------+
| 3271600 |
+---------+
+------+
| qty  |
+------+
|   42 |
+------+
+-------------+------+---------+
| kode_produk | qty  | total   |
+-------------+------+---------+
| prod-01     |    6 |  375000 |
| prod-02     |    2 |  110000 |
| prod-03     |    3 |  300000 |
| prod-04     |    9 |  360000 |
| prod-05     |    4 | 1000000 |
| prod-07     |    1 |   48000 |
| prod-08     |    2 |   31600 |
| prod-09     |    6 |  552000 |
| prod-10     |    9 |  495000 |
+-------------+------+---------+
```