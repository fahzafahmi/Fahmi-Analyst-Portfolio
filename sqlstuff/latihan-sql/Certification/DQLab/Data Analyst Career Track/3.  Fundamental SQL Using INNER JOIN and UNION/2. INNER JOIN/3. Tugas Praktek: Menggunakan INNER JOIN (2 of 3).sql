```

Tugas Praktek: Menggunakan INNER JOIN (2/3)
“Oke, Aksara. Silakan dipraktikkan pada code editor untuk menggabungkan tabel tr_penjualan dan ms_produk dan menampilkan seluruh kolom dari kedua tabel.”

```

SELECT * FROM tr_penjualan, ms_produk;

```
STDOUT

+----------------+----------------+---------+-------------+-------------------------------+------+--------+---------+-------------+-------------------------------+--------+
| kode_transaksi | kode_pelanggan | no_urut | kode_produk | nama_produk                   | qty  | harga  | no_urut | kode_produk | nama_produk                   | harga  |
+----------------+----------------+---------+-------------+-------------------------------+------+--------+---------+-------------+-------------------------------+--------+
| tr-001         | dqlabcust07    |       1 | prod-01     | Kotak Pensil DQLab            |    5 |  62500 |       1 | prod-01     | Kotak Pensil DQLab            |  62500 |
| tr-001         | dqlabcust07    |       2 | prod-03     | Flash disk DQLab 32 GB        |    1 | 100000 |       3 | prod-03     | Gift Voucher DQLab 100rb      | 100000 |
| tr-001         | dqlabcust07    |       3 | prod-09     | Buku Planner Agenda DQLab     |    3 |  92000 |       9 | prod-09     | Buku Planner Agenda DQLab     |  92000 |
| tr-001         | dqlabcust07    |       4 | prod-04     | Flashdisk DQLab 32 GB         |    3 |  40000 |       4 | prod-04     | Flashdisk DQLab 32 GB         |  40000 |
| tr-002         | dqlabcust01    |       1 | prod-03     | Gift Voucher DQLab 100rb      |    2 | 100000 |       3 | prod-03     | Gift Voucher DQLab 100rb      | 100000 |
| tr-002         | dqlabcust01    |       2 | prod-10     | Sticky Notes DQLab 500 sheets |    4 |  55000 |      10 | prod-10     | Sticky Notes DQLab 500 sheets |  55000 |
| tr-002         | dqlabcust01    |       3 | prod-07     | Tas Travel Organizer DQLab    |    1 |  48000 |       7 | prod-07     | Tas Travel Organizer DQLab    |  48000 |
| tr-003         | dqlabcust03    |       1 | prod-02     | Flashdisk DQLab 64 GB         |    2 |  55000 |       2 | prod-02     | Flashdisk DQLab 64 GB         |  55000 |
| tr-004         | dqlabcust03    |       1 | prod-10     | Sticky Notes DQLab 500 sheets |    5 |  55000 |      10 | prod-10     | Sticky Notes DQLab 500 sheets |  55000 |
| tr-004         | dqlabcust03    |       2 | prod-04     | Flashdisk DQLab 32 GB         |    4 |  40000 |       4 | prod-04     | Flashdisk DQLab 32 GB         |  40000 |
| tr-005         | dqlabcust05    |       1 | prod-09     | Buku Planner Agenda DQLab     |    3 |  92000 |       9 | prod-09     | Buku Planner Agenda DQLab     |  92000 |
| tr-005         | dqlabcust05    |       2 | prod-01     | Kotak Pensil DQLab            |    1 |  62500 |       1 | prod-01     | Kotak Pensil DQLab            |  62500 |
| tr-005         | dqlabcust05    |       3 | prod-04     | Flashdisk DQLab 32 GB         |    2 |  40000 |       4 | prod-04     | Flashdisk DQLab 32 GB         |  40000 |
| tr-006         | dqlabcust02    |       1 | prod-05     | Gift Voucher DQLab 250rb      |    4 | 250000 |       5 | prod-05     | Gift Voucher DQLab 250rb      | 250000 |
| tr-006         | dqlabcust02    |       2 | prod-08     | Gantungan Kunci DQLab         |    2 |  15800 |       8 | prod-08     | Gantungan Kunci DQLab         |  15800 |
+----------------+----------------+---------+-------------+-------------------------------+------+--------+---------+-------------+-------------------------------+--------+

```