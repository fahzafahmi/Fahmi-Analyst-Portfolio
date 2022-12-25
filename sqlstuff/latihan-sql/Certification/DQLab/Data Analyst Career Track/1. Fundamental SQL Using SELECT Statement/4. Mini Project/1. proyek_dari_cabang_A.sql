/*
Sebuah snippet code yang ada di kegiatan latihan DQLab Fundamental SQL Using SELECT statement
*/

select kode_pelanggan, nama_produk, qty, harga, (qty*harga) total from tr_penjualan where (qty*harga) >= 100000 order by total desc;