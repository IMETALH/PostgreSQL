/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Use a where query to fetch a specific or aggregated data
*/


SELECT 
	product_name, 
	category_id,
	size,
	price
FROM
	inventory.products
WHERE price > 20.00;


