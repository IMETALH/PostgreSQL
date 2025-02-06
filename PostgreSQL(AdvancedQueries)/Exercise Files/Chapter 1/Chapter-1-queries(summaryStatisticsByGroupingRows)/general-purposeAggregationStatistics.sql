/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Obtain general-purpose aggregate statistics: Use a group by query to combine 
all of this data based off of the type of oil, and then perform some aggregate
calculations to get a better feel for the range of prices for each oil type.
*/
SELECT
	sku,
	product_name,
	size,
	price
FROM
	inventory.products;

SELECT 
	product_name AS "Product Name",
	count(*) AS "Number of Products",
	max(price) AS "Highest Price",
	max(size) AS "Largest Size",
	min(price) AS "Lowest Price",
	avg(price) AS "Average Price"
FROM
	inventory.products
GROUP BY
	product_name
ORDER BY 
	product_name;