-- rank product pricing overall, by category, and by size

select product_name,
	category,
	size,
	price,
	dense_rank() over (order by price desc) as overall_rank,
	dense_rank() over (partition by category order by price desc) as category_rank,
	dense_rank() over (partition by size order by price desc) as size_rank
from 
    products
order by 
    ecategory, price desc;