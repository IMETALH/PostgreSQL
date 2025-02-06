/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Ordering data within a partition 
*/
-- sum total
SELECT
	category_id,
	sum(category_id) over () as "sum total"
FROM
	inventory.categories;
-- running total
SELECT
	category_id,
	sum(category_id) over (order by category_id) as "running total"
FROM
	inventory.categories;

-----------------
-- JOINS Without SUM
SELECT
	order_lines.order_id,
	order_lines.sku,
	order_lines.quantity,
	products.price AS "Price Each",
	order_lines.quantity * products.price AS "Line Total"
FROM 
	sales.order_lines
INNER JOIN
	inventory.products ON order_lines.sku = products.sku;


------------------
-- JOINS WITH SUM
SELECT
	order_lines.order_id,
	order_lines.sku,
	order_lines.quantity,
	products.price AS "Price each",
	order_lines.quantity * products.price AS "Line Total",
	sum (order_lines.quantity * products.price) over (partition by order_id) AS " SUM Order Total",
	sum (order_lines.quantity * products.price) over (partition by order_id order by line_id) AS "Running Total"
FROM 
	sales.order_lines 
INNER JOIN
	inventory.products ON order_lines.sku = products.sku;
	




