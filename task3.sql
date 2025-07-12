select order_id, order_date, status, product_name, rating 
from orders
join order_items using (order_id)
join products using(product_id)
join reviews using(product_id)
where rating < 3
order by order_date