select  c.customer_id , count(order_id) as orders_count, sum(total_amount) / count(order_id) as avg_bill
from customers c 
join orders as o on c.customer_id = o.customer_id
            and (o.order_date - c.registration_date) < interval '200 days' -- Нет никого, кто бы сделал заказ через 30 дней
group by c.customer_id
order by c.registration_date; 
