```
Fungsi Skalar Matematika - FLOOR()
Fungsi FLOOR()

Syntax: 

SELECT FLOOR(ColumnName)  
FROM TableName; 
```

SELECT StudentID, FirstName, LastName, FLOOR(Semester1) as Semester1, FLOOR(Semester2) as Semester2, MarkGrowth FROM students;