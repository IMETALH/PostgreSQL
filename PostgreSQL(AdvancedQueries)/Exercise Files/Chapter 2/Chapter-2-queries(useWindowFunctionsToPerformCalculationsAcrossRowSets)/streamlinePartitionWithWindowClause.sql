/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Streamline partition queries with a WINDOW clause 
*/

SELECT
	sku,
	product_name,
	category_id,
	size,
	price,
	avg(price) over (partition by category_id), -- repeated partition
	min(price) over (partition by category_id),
	max(price) over (partition by category_id)
FROM 
	inventory.products
ORDER BY
	sku,
	size;

SELECT
	sku,
	product_name,
	category_id,
	size,
	price,
	avg(price) over (xyz),
	min(price) over (xyz),
	max(price) over (xyz)
FROM 
	inventory.products
WINDOW 
	xyz AS (partition by size) -- window partition by size
ORDER BY
	sku,
	size;

SELECT
	sku,
	product_name,
	category_id,
	size,
	price,
	avg(price) over (xyz),
	min(price) over (xyz),
	max(price) over (xyz)
FROM 
	inventory.products
WINDOW 
	xyz AS (partition by category_id) -- with the window clause, we can alias PARTITION, and use the same partition over and over again.
ORDER BY
	sku,
	size;