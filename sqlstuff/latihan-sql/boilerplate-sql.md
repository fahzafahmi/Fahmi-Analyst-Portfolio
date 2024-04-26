Kode SQL untuk mengatahui data sales berdasarkan ID toko yang sudah ditentukan dan range harga yang sudah ditetapkan
```sql
SELECT * FROM sales WHERE STORE_CITY_ID IN (3,4,5)
AND PRICE_PER_KG='11000' ORDER BY PURCHASE_DAT DESC;
```

Kode SQL untuk mengurutkan data berdasarkan tanggal yang sudah ditetapkan
```sql
SELECT * FROM sales WHERE PURCHASE_DATE > '2022-03-05'
ORDER BY PURCHASE_DATE ASC;
```

Kode SQL untuk mengurutkan data berdasarkan nama produk dan toko yang tidak ingin dimasukkan kedalam tabel
```sql
SELECT * FROM sales WHERE PRODUCT_NAME IN ('Mangga','Jeruk') AND STORE_CITY_ID NOT IN (1,6,7) ORDER BY PURCHASE_DATE DESC;
```

Kode SQL untuk menampilkan hanya data yang diinginkan
```sql
SELECT first_name, salary_2021 FROM employees
ORDER BY salary_2021 DESC;
```

Kode SQL untuk mengurutkan data yang dipilih dan sesuai dengan klasifikasi yang sudah ditentukan
```sql
SELECT first_name, store_city_id, salary_2022 FROM employees
WHERE store_city_id IN (3,4,7) AND salary_2022 > '5000'
ORDER BY salary_2022 DESC;
```

Kode SQL untuk melihat data sales sesuai kriteria dan rentang tanggal sesuai klasifikasi yang sudah ditentukan
```sql
SELECT product_name, SUM(quantity) AS quantity FROM sales
WHERE product_naame IN ('Mangga','Apel') AND purchase_date BETWEEN '2022-05-03' AND '2022-05-23'
GROUP BY product_name ORDER BY quantity DESC;
```

Kode SQL untuk menggabungkan dua kolom menjadi satu dan mengetahui data sesuai dengan kriteria yang ditentukan
```sql
SELECT CONCAT (emp.first_name,' ',emp.last_name)
AS full_name, emp.department, reg.region FROM employees AS emp
LEFT JOIN region AS reg ON reg.store_city_id = emp.store_city_id
WHERE reg.store_city_id IN (SELECT store_city_id FROM region
                        WHERE region IN ('Bali','Yogyakarta')
                        GROUP BY store_city_id)
ORDER BY full_name;
```

Kode SQL untuk mengelompokkan data sesuai kategori yang sudah ditentukan
```sql
SELECT CASE WHEN store_city_id IN (SELECT store_city_id FROM region
                        WHERE region IN (
                            'Jakarta','Jawa Barat','Bandung',
                            'Jawa Tengah','Yogyakarta','Jawa Timur')
                        GROUP BY store_city_id)
THEN 'JAWA' ELSE 'LUAR JAWA'
END AS pulau, SUM (quantity*price_per_kg) AS total_pendapatan
FROM sales
GROUP BY pulau;
```

Kode SQL untuk membuat klasifikasi berdasarkan range data pakai rumus IF versi SQL, dan mengurutkan dari tabel nomer 2 kemudian tabel nomer 1
```sql
SELECT date, country_name, population, new_confirmed, gdp_per_capita_usd,
case when gdp_per_capita_usd <= 1046 then 'Low Income'
     when gdp_per_capita_usd > 1046 and gdp_per_capita_usd <= 4095 then 'Lower-Middle Income'
     when gdp_per_capita_usd > 4095 and gdp_per_capita_usd <= 12695 then 'Upper-Middle Income'
     else 'High Income'
end as classification_country,
FROM `bigquery-public-data.covid19_open_data.covid19_open_data`
where
subregion2_name is null 
and subregion1_name is null 
and new_confirmed is not null
order by 2,1
```

Kode SQL untuk menghitung jumlah member dan jumlah rata-rata usia
```sql
SELECT ReportsTo, count(ReportsTo) as Members, round(avg(Age), 0) as 'Average Age' FROM maintable_18LOJ
Where ReportsTo is not null Group by ReportsTo order by ReportsTo
```

Kode SQL untuk mencari populasi lebih dari 100 ribu berdasarkan kode negara USA
```sql
SELECT * FROM CITY WHERE CountryCode = 'USA' AND POPULATION > '100000';
```

Kode SQL untuk mencari populasi lebih dari 120 ribu berdasarkan kode negara USA dan hanya menampilkan nama region
```sql
SELECT NAME FROM CITY WHERE COUNTRYCODE = 'USA' AND POPULATION > '120000'
```

Kode SQL untuk memilih semua tabel CITY
```sql
SELECT * FROM CITY
```

Kode SQL untuk memilih tabel CITY dengan id tabel 1661
```sql
SELECT * FROM CITY WHERE ID='1661';
```

Kode SQL untuk memilih tabel CITY dengan country code JPN
```sql
SELECT * FROM CITY WHERE COUNTRYCODE='JPN';
```

Kode SQL untuk melihat nama kota di country code JPN pada tabel CITY
```sql
SELECT NAME FROM CITY WHERE COUNTRYCODE='JPN';
```

Kode SQL untuk memilih kolom CITY dan STATE dari tabel STATION
```sql
SELECT CITY, STATE FROM STATION;
```

Kode SQL untuk memilih kolom CITY dari tabel STATION dengan kondisi ID CITY genap dan menghilangkan data duplikat
```sql
SELECT DISTINCT CITY FROM STATION WHERE mod(ID,2) = 0 order by city asc;
```

Kode SQL untuk menghitung jumlah selisih rekod data dan rekod data yang unik
```sql
SELECT COUNT(*) - COUNT(DISTINCT CITY) FROM STATION;
```

Kode SQL untuk mengurutkan data berdasarkan jumlah huruf nama kota (1)
```sql
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY), CITY ASC;
```

Kode SQL untuk mengurutkan data berdasarkan jumlah huruf nama kota (2)
```sql
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) ASC, CITY LIMIT 1;
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC, CITY LIMIT 1;
```

Kode SQL untuk mengurutkan data unik berdasarkan huruf awal huruf vokal AIUEO
```sql
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) IN ('A','I','U','E','O');
```

Kode SQL untuk mengurutkan data unik berdasarkan huruf akhir huruf vokal AIUEO
```sql
SELECT DISTINCT CITY FROM STATION WHERE RIGHT(CITY,1) IN ('a','i','u','e','o');
```

Kode SQL untuk mengurutkan data unik berdasarkan huruf awal dan akhir huruf vokal AIUEO
```sql
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) IN ('A','I','U','E','O') AND RIGHT(CITY,1) IN ('a','i','u','e','o');
```

Kode SQL untuk mengurutkan data unik berdasarkan antara huruf awal dan akhir huruf vokal AIUEO
```sql
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) IN ('A','I','U','E','O') OR RIGHT(CITY,1) IN ('a','i','u','e','o');
```

Kode SQL untuk mengurutkan data unik berdasarkan bukan huruf awal huruf vokal AIUEO
```sql
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) NOT IN ('A','I','U','E','O');
```

Kode SQL untuk mengurutkan data unik berdasarkan bukan huruf akhir huruf vokal AIUEO
```sql
SELECT DISTINCT CITY FROM STATION WHERE RIGHT(CITY,1) NOT IN ('a','i','u','e','o');
```

Kode SQL untuk mengurutkan data unik berdasarkan huruf awal dan akhir bukan huruf vokal AIUEO
```sql
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) NOT IN ('A','I','U','E','O') AND RIGHT(CITY,1) NOT IN ('a','i','u','e','o');
```

Kode SQL untuk mengurutkan data unik berdasarkan antara huruf awal dan akhir bukan huruf vokal AIUEO
```sql
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) NOT IN ('A','I','U','E','O') OR RIGHT(CITY,1) NOT IN ('a','i','u','e','o');
```

Kode SQL untuk memfilter data berdasarkan nilai lebih dari 75 dan mengurutkan berdasarkan tiga huruf terakhir dan apabila namanya sama diurutkan dari nomor ID terbesar
```sql
SELECT NAME FROM STUDENTS WHERE MARKS > '75' ORDER BY RIGHT(NAME,3), ID ASC;
```

Kode SQL untuk menampilkan nama berdasarkan urutan abjad
```sql
SELECT NAME FROM EMPLOYEE ORDER BY NAME ASC;
```

Kode SQL untuk mengurutkan data pegawai yang mendapatkan gaji 2000 usd dan bekerja kurang dari 10 bulan
```sql
SELECT NAME FROM EMPLOYEE WHERE MONTHS < '10' AND SALARY > '2000' ORDER BY EMPLOYEE_ID ASC;
```

Kode SQL untuk inner join antara 3 tabel menjadi 1 tabel besar (tabel students, tabel friends, tabel packages) dan membandingkan antara data gaji yang diterima antar pertemanan yang terjadi pada S1 dan S2
```sql
/*
Code explanation:
S1 adalah prefix yang mereferensi data untuk student 1 alias pemain utama
S2 adalah prefix yang mereferensi data untuk student 2 alias temannya pemain utama
F adalah prefix yang mereferensi data untuk relasi pertemanan yang terjadi antara S1 dan S2
P1 adalah prefix yang mereferensi data untuk gaji dari student 1 alias pemain utama
P2 adalah prefix yang mereferensi data untuk gaji dari student 2 alias temannya pemain utama
*/

SELECT S1.NAME FROM STUDENTS S1
INNER JOIN PACKAGES P1 ON S1.ID = P1.ID
INNER JOIN FRIENDS F ON S1.ID = F.ID
INNER JOIN STUDENTS S2 ON F.FRIEND_ID = S2.ID
INNER JOIN PACKAGES P2 ON S2.ID = P2.ID
WHERE P1.SALARY < P2.SALARY ORDER BY P2.SALARY;
```

Kode SQL untuk mengklasifikasikan 3 angka yang ada di 3 tabel untuk menentukan jenis segitiga yang dapat dibentuk dari ketiga angka tersebut
```sql
SELECT
    CASE
        WHEN A + B <= C OR A + C <= B OR C + B <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR A = C OR B = C THEN 'Isosceles'
        WHEN A <> B AND B <> C THEN 'Scalene'
    END TUPLE
FROM TRIANGLES;
```

Kode SQL untuk join tabel yang akan dicari datanya
```sql
select ei.employee_ID 'Employee ID', ei.name 'Name'
from employee_information ei
join last_quarter_bonus qb on qb.employee_ID = ei.employee_ID
where ei.division like 'HR' and qb.bonus >= 5000;
```

Kode SQL untuk inner join tabel yang hanya hendak diurutkan datanya
```sql
select td.stock_code from price_today td
inner join price_tomorrow pt on td.stock_code = pt.stock_code
where pt.price > td.price
order by stock_code asc;
```

Kode SQL untuk fetching data invoice total per negara, berdasarkan data relasional iv.customer id => cs.id, cs.city_id => ct.id, ct.country_id => cn.id
```sql
select cn.country_name, count(*), avg(iv.total_price)
from country cn, city ct, customer cs, invoice iv
where cn.id = ct.country_id and ct.id = cs.city_id and cs.id = iv.customer_id
group by cn.country_name
having avg(iv.total_price) > (select avg(total_price) from invoice);
```

Kode SQL untuk fetching data penjualan produk per kota, berdasarkan data relasional pdt.id => ivt.product_id, ivt.invoice_id => iv.id, iv.customer_id => cs.id, cs.city_id => ct.id
```sql
select ct.city_name, pdt.product_name, round(sum(ivt.line_total_price), 2) as ttl
from city ct, customer cs, invoice iv, invoice_item ivt, product pdt
where ct.id = cs.city_id and cs.id = iv.customer_id and iv.id = ivt.invoice_id and ivt.product_id = pdt.id
group by ct.city_name, pdt.product_name
order by ttl desc
```

Kode SQL untuk menghitung total revenue dari setiap barang yang telah dijual
```sql
select kode_pelanggan, nama_produk, qty, harga, (qty*harga) total from tr_penjualan where (qty*harga) >= 100000 order by total desc
```

Kode SQL untuk melakukan pembulatan bilangan desimal dua angka dibelakang koma (xxx.05)
```sql
select round(sum(lat_n),2) lat, round(sum(long_w),2) lon from station;
```

Kode SQL untuk menggabungkan dan menghitung 2 tabel dengan menggunakan mendeklarasikan fungsi
```sql
with premium_user as (
select count(distinct pu.user_id) 'Total Purchased Premium in 2023'
from eklipsedataanalysttest.premium_users pu
),
non_premium_user as (
select count(distinct pu.user_id) 'Total Not Purchased Premium in 2023'
from eklipsedataanalysttest.premium_users pu
where pu.user_id not in (select c.user_id from eklipsedataanalysttest.clips c)
) select * from premium_user, non_premium_user
```

CONTINUE HERE...

Template untuk melanjutkan query input
Kode SQL untuk 
```sql
SELECT * FROM ...
```
