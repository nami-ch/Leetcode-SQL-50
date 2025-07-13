-- Customer Group_concat() supports order by and separator functionalities  

select sell_date, count(distinct product) as num_sold, 
    group_concat(distinct product ORDER BY product ASC SEPARATOR ',') as products 
from activities
group by sell_date
order by sell_date
