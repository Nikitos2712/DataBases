select first_name, last_name, email, total_amount 
from customers
join orders using(customer_id)
where loyalty_level in ('gold', 'platinum') and total_amount > 100000
order by total_amount desc;