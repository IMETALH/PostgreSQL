/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Use an IN Function With A Subquery.
*/


-- Starting with this basic query
SELECT
	*
FROM
	inventory.products
WHERE
	product_name = 'Delicate'
		OR product_name = 'Bold'
		OR product_name = 'Light'
	

-- use an in() function with a list
SELECT
	*
FROM
	inventory.products      
WHERE
	product_name IN('Delicate', 'Bold', 'Light');

-- use an in function with a sub select query
SELECT
	*
FROM
	inventory.products
WHERE
	product_name IN(
		SELECT
			product_name
		FROM
			inventory.products
		GROUP BY
			product_name
		HAVING
			count(*) >= 5
);


-- determine the query used as a sub select above
SELECT
	product_name,
    count(*) as "count"
FROM
	inventory.products
GROUP BY
	product_name
HAVING
	count(*) >= 5;