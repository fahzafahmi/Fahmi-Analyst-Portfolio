```
Tugas Praktek
Tugas:
Setelah memahami fungsi-fungsi sebelumnya, kali ini Senja memintaku untuk menggunakan fungsi MIN() dan MAX() untuk menghitung nilai dari kolom Semester1 dan Semester2. Aku menggunakan fungsi tersebut dalam satu SELECT-Statement.

Jika berhasil, berikut output tabel yang diperoleh:

+-------+-------+-------+-------+
| Min1  | Max1  | Min2  | Max2  |
+-------+-------+-------+-------+
| 45.32 | 92.25 | 50.25 | 90.75 |
+-------+-------+-------+-------+

```

SELECT MIN(Semester1) as Min1, MAX(Semester1) as Max1, MIN(Semester2) as Min2, MAX(Semester2) as Max2 FROM students;