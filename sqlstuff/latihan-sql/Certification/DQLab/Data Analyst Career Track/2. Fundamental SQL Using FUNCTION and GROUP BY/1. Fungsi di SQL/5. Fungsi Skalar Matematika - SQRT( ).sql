```
Fungsi Skalar Matematika - SQRT( )
Fungsi SQRT()

Syntax: 

SELECT SQRT(ColumnName)  
FROM TableName; 
```

SELECT StudentID, FirstName, LastName, SQRT(Semester1) as Semester1, Semester2, MarkGrowth FROM students;