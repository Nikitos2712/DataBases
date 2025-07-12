select extract(month from order_date) as month, category,
	sum(quantity) as total_quantity,
	sum(quantity * unit_price * (1 - discount/100)) as total_revenue
from orders
join order_items using(order_id)
join products using(product_id)
where extract(year from order_date) = 2023
group by extract(month from order_date), category
order by month, category