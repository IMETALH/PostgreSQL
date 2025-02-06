/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Define values with a CASE statement
*/

-- The CASE statement can be used to define values in a query.
-- Understand how to use the CASE statement to define values in a query.
-- The CASE statement is similar to an IF statement in other programming languages.
-- -- FOR EXAMPLE: The below statement will return 'C' because the first two conditions are false.
-- The WHEN, THEN, ELSE statement is used to define the conditions and the values to return. They can be extended to include multiple conditions, as many as you want.
SELECT
	CASE
		WHEN 0 = 1
		THEN 'A'
		WHEN 1 = 0
		THEN 'B'
		ELSE 'C'
	END;
-- ############################################################################ --

-- Our query
SELECT
	sku,
	product_name,
	category_id,
	CASE
		WHEN category_id = 1 THEN 'Olive Oils'
		WHEN category_id = 2 THEN 'Flavor Infused Oils'
		WHEN category_id = 3 THEN 'Bath and Beauty'
		ELSE 'category UNKNOWN'
	END AS "Category Description",
	size,
	price
FROM
	inventory.products;