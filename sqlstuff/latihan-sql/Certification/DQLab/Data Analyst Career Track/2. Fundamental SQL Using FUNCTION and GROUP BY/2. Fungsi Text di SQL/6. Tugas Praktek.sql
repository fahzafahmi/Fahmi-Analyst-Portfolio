```
Tugas Praktek
Tugas:
Gunakan fungsi UPPER() untuk mengubah kolom FirstName menjadi seluruhnya kapital dan gunakan LOWER() untuk mengubah kolom LastName menjadi seluruhnya non-kapital. Gunakan kedua fungsi tersebut dalam satu SELECT-Statement.

Jika berhasil, berikut output tabel yang diperoleh:

+-----------+-----------+----------+
| StudentID | FirstName | LastName |
+-----------+-----------+----------+
|         1 | JOSE      | mohit    |
|         2 | LALA      | karlina  |
|         3 | SULTAN    | hadi     |
|         4 | JAYA      | usman    |
|         5 | ANJALI    | wijaya   |
+-----------+-----------+----------+

```

SELECT StudentID, UPPER(FirstName) as FirstName, LOWER(LastName) as LastName from students;