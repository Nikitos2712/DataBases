select category, cast(avg(rating) as numeric(2,1)) as avg_rating
from products
join reviews using(product_id)
group by category
having avg(rating) > 3.5 and count(review_text) > 1
order by avg_rating desc
