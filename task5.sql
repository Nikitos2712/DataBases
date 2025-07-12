select first_name, last_name, email, product_name, discount_percent 
from customers
join orders using(customer_id)
join order_items using(order_id)
join products using(product_id)
join promotions on order_date between start_date and end_date
where applicable_category = 'Гаджеты'