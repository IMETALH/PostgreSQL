/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Merge columns with COALESCE
*/

SELECT
	*
FROM
	inventory.categories;


INSERT INTO 
	inventory.categories 
		VALUES 
			(4, null, 'Gift Baskets');



-- The COALESCE function is used to merge columns in a table.
-- The merge happens on a row level. 
-- For each row in the inventory.categories table, COALESCE(category_description, product_line) checks
-- if category_description is NULL. 
-- If it is, it takes the value from product_line for that specific row. 
-- If category_description is not NULL, it remains unchanged.
SELECT
	category_id,
	coalesce(category_description, product_line) AS "description",
	product_line
FROM
	inventory.categories
