/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Great a Window function with an OVER clause
*/

SELECT
	sku,
	product_name,
	category_id,
	size,
	price,
	avg(price) over()
FROM
	inventory.products
