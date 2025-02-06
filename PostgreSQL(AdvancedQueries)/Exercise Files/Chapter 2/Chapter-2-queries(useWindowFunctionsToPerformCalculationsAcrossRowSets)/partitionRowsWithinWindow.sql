/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Partition rows within a window 
*/

SELECT
	size AS "Size",
	avg(price) AS "Average Price"
FROM 
	inventory.products
GROUP BY 
	size
ORDER BY 
 	size;

-- Run this first: notice that over() window's function parenthesis is empty
SELECT
	product_name,
	size,
	category_id,
	price,
	avg(price) over() AS "Average Price for Size" -- at this line
FROM
	inventory.products
ORDER BY
	sku,
	size;

-- Then run this
SELECT
	product_name,
	size,
	category_id,
	price,
	avg(price) over(partition by size) AS "Average Price for Size" -- here the over() if filled, review it and run the query
FROM
	inventory.products
ORDER BY
	sku,
	size;


-- Lastly, run this
SELECT
	product_name,
	size,
	category_id,
	price,
	avg(price) over(partition by size) AS "Average Price for Size", -- here the over() if filled, review it
	price - avg(price) over(partition by size) as "Difference" -- + then here, we calculate the difference (price - avg over())
FROM
	inventory.products
ORDER BY
	sku,
	size;





