select product_name, manufacturer, SUM(quantity) as sold_quantity
from order_items o 
join products using(product_id)
where category = 'Периферия'
group by product_name, manufacturer
limit 5;
