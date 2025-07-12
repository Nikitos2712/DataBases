select p.product_name, p.category , count(order_id) as cnt_join_purchases
from orders o
join order_items o_i using(order_id)
join products p using(product_id)
where order_id in
(select order_id
from orders o
join order_items o_i using(order_id)
join products p using(product_id)
where product_name = 'Смартфон X1') 
and p.product_name != 'Смартфон X1'
group by p.product_name, p.category
order by cnt_join_purchases