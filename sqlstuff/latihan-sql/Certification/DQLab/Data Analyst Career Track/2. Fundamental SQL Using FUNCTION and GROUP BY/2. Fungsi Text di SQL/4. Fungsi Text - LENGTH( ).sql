```
Fungsi Text - LENGTH( )
Fungsi Text LENGTH()

Syntax: 

SELECT LENGTH(ColumnName)
FROM TableName; 
 
+-----------+-----------+-------------+
| StudentID | FirstName | Total_Chart |
+-----------+-----------+-------------+
|         1 | Jose      |           4 |
|         2 | Lala      |           4 |
|         3 | Sultan    |           6 |
|         4 | Jaya      |           4 |
|         5 | Anjali    |           6 |
+-----------+-----------+-------------+

```

SELECT StudentID, FirstName, LENGTH(FirstName) as Total_Char FROM students;