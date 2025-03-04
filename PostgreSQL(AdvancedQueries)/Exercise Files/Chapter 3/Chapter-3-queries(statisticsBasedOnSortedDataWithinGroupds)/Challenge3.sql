-- Obtain statistical information about product pricing

select 
    category,
	min(price) as min_price,
	percentile_cont(.25) within group (order by price) as first_quartile,
	percentile_cont(.50) within group (order by price) as second_quartile,
	percentile_cont(.75) within group (order by price) as third_quartile,
	max(price) as max_price,
	max(price) - min(price) as price_range
from 
    products
group by 
    category;