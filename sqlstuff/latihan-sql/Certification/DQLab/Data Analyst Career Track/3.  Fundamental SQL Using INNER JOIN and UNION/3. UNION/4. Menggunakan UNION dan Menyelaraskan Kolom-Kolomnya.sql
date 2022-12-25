```

Menggunakan UNION dan Menyelaraskan Kolom-Kolomnya.
Senja menyerahkan tugas praktik sederhana untuk menguji materi ini. Sekilas kubaca pertanyaan dan perintahnya tidak sulit. Baiklah, mari langsung terapkan ilmunya!

Ketikkan syntax query di bawah pada Code Editor, untuk melihat hasil dari penggabungan tabel (UNION) dengan menyelaraskan kolom. 

SELECT CustomerName, ContactName, City, PostalCode FROM Customers
UNION SELECT Suppliername, ContactName, City, PostalCode FROM Suppliers;

Jika berhasil maka hasil nya akan seperti berikut ini:

+-----------------+-------------+----------+------------+
| CustomerName    | ContactName | City     | PostalCode |
+-----------------+-------------+----------+------------+
| Fransiska Maria | Maria       | Jakarta  |      14450 |
| Ana Helena      | Ana Helena  | Surabaya |       5021 |
| Lily Subari     | Lili        | Makassar |       5023 |
| Yulius Syrup    | Yulius      | Jakarta  |      14450 |
| Bandung Bakery  | Sherly Ani  | Bandung  |      70117 |
| Tara Pastry     | Regina Tara | Semarang |      48104 |
+-----------------+-------------+----------+------------+

```

SELECT CustomerName, ContactName, City, PostalCode FROM Customers
UNION SELECT Suppliername, ContactName, City, PostalCode FROM Suppliers;

```
STDOUT

+-----------------+-------------+----------+------------+
| CustomerName    | ContactName | City     | PostalCode |
+-----------------+-------------+----------+------------+
| Fransiska Maria | Maria       | Jakarta  |      14450 |
| Ana Helena      | Ana Helena  | Surabaya |       5021 |
| Lily Subari     | Lili        | Makassar |       5023 |
| Yulius Syrup    | Yulius      | Jakarta  |      14450 |
| Bandung Bakery  | Sherly Ani  | Bandung  |      70117 |
| Tara Pastry     | Regina Tara | Semarang |      48104 |
+-----------------+-------------+----------+------------+

```