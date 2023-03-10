/*
Enter your query here.
*/

SELECT S1.NAME FROM STUDENTS S1
INNER JOIN PACKAGES P1 ON S1.ID = P1.ID
INNER JOIN FRIENDS F ON S1.ID = F.ID
INNER JOIN STUDENTS S2 ON F.FRIEND_ID = S2.ID
INNER JOIN PACKAGES P2 ON S2.ID = P2.ID
WHERE P1.SALARY < P2.SALARY ORDER BY P2.SALARY;