```
Fungsi Skalar Matematika - CEILING()
Fungsi CEILING()

Syntax: 

SELECT CEILING(ColumnName)  
FROM TableName; 
```

SELECT StudentID, FirstName, LastName, CEILING(Semester1) as Semester1, CEILING(Semester2) as Semester2, MarkGrowth from students;