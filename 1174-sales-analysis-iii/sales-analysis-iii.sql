# Write your MySQL query statement below
select distinct p.product_id,p.product_name 
from Product as p  
join
Sales as s on p.product_id = s.product_id
where s.product_id in 
(SELECT product_id from Sales
group by product_id having min(sale_date)>='2019-01-01' and max(sale_date)<='2019-03-31');