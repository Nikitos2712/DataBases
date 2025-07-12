select p.product_name, p.category , sum(o_i.quantity) as total_quantity 
from products p 
join order_items o_i using(product_id)
join orders o2 using(order_id)
join customers as c on c.customer_id = o2.customer_id and c.loyalty_level in ('gold', 'platinum')
where p.product_name not in
(select p.product_name 
from products p 
join order_items o_i using(product_id)
join orders o2 using(order_id)
join customers as c on c.customer_id = o2.customer_id and c.loyalty_level = 'basic')
group by p.product_name, category
