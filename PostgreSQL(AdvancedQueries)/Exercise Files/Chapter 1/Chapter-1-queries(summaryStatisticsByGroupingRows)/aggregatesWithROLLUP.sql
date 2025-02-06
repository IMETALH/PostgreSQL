/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Include overall aggregates with ROLLUP.ABORT
The ROLLUP() function in SQL is an extension of the GROUP BY 
clause that allows you to generate subtotal and grand total rows 
in a result set, in addition to the grouped data.
*/

SELECT
	category_id,
	product_name,
	count(*),
	min(price) AS "Lowest price",
	max(price) AS "highest price",
	avg(price) AS "Average price"
FROM 
	inventory.products
GROUP BY 
	rollup (category_id, product_name)
ORDER BY
	category_id,
	product_name;