/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Return all possible combinations of groups with CUBE
*/

-- When cube is added to Group By clause, it will return all possible combination of grouping parameters. 

SELECT
	category_id,
	size,
	count(*),
	min(price) AS "Lowest Price",
	max(price) AS "Highest Price",
	avg(price) AS "Average Price"
FROM 
	inventory.products
GROUP BY 
	cube (category_id, size)
ORDER BY
	category_id,
	size;