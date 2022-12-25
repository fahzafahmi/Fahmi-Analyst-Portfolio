/*
This sql script was a test i have took on HackerRank for SQL (Basic) certification
its intented to find out the employee bonus based on 2 table called employee_information and last_quarter_bonus
the test was taken on Sep 05 2022
*/

select ct.city_name, pdt.product_name, round(sum(ivt.line_total_price), 2) as ttl
from city ct, customer cs, invoice iv, invoice_item ivt, product pdt
where ct.id = cs.city_id and cs.id = iv.customer_id and iv.id = ivt.invoice_id and ivt.product_id = pdt.id
group by ct.city_name, pdt.product_name
order by ttl desc