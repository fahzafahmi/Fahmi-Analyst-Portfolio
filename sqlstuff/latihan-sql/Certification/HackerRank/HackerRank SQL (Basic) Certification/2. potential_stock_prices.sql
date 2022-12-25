/*
This sql script was a test i have took on HackerRank for SQL (Basic) certification
its intented to find out the employee bonus based on 2 table called employee_information and last_quarter_bonus
the test was taken on Aug 28 2022
*/

select td.stock_code from price_today td
inner join price_tomorrow pt on td.stock_code = pt.stock_code
where pt.price > td.price
order by stock_code asc;