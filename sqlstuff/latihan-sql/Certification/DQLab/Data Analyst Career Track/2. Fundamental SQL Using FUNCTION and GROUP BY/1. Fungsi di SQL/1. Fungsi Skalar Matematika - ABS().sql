```
Fungsi Skalar Matematika - ABS()
Fungsi ABS( )

Syntax: 

SELECT ABS(ColumnName)  
FROM TableName; 
```

SELECT StudentID, FirstName, LastName, Semester1, Semester2, ABS(MarkGrowth) as MarkGrowth FROM students;