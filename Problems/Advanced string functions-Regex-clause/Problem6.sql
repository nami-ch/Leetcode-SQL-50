
-- grouping by year to ensure that in that year's feb month, the purchase is >= 100 

select product_name, unit 
from (select a.product_name, sum(b.unit) as unit, year(b.order_date) as year 
from products a inner join orders b on a.product_id = b.product_id 
where month(b.order_date) = 2 
group by product_name, year ) a 
where unit >= 100 
