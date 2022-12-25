/*
This sql script was a test i have took on HackerRank for SQL (Basic) certification
its intented to find out the employee bonus based on 2 table called employee_information and last_quarter_bonus
the test was taken on Aug 28 2022
*/

select ei.employee_ID 'Employee ID', ei.name 'Name'
from employee_information ei
join last_quarter_bonus qb on qb.employee_ID = ei.employee_ID
where ei.division like 'HR' and qb.bonus >= 5000;