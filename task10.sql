--  Всё, до чего дошел
select customer_id, first_name, last_name, c.registration_date, total_amount 
from customers c
join orders o using(customer_id)
where c.loyalty_level != 'basic'
order by registration_date;


select distinct on (customer_id) customer_id, order_date
from customers c
join orders o using(customer_id)
where c.loyalty_level != 'basic'
order by customer_id, order_date;
