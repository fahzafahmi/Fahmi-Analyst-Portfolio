/*
This sql script was a test i have took on HackerRank for SQL (Basic) certification
its intented to find out the employee bonus based on 2 table called employee_information and last_quarter_bonus
the test was taken on Sep 05 2022
*/

select cn.country_name, count(*), avg(iv.total_price)
from country cn, city ct, customer cs, invoice iv
where cn.id = ct.country_id and ct.id = cs.city_id and cs.id = iv.customer_id
group by cn.country_name
having avg(iv.total_price) > (select avg(total_price) from invoice);