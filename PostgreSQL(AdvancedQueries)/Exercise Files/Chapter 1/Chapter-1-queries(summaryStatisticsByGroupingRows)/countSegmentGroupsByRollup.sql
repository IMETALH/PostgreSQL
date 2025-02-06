/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Segmenting groups with aggregate filter
*/

SELECT
	category_id,
	count(*) AS "Count All",
	avg(price) AS "Average price",
	-- small products
	count(*) filter (where size <=16) AS "Count Small",
	avg(price) filter (where size <= 16) AS "Average Price Small",
	-- large products
	count(*) filter (where size > 16) AS "Count Large",
	avg(price) filter (where size > 16) AS "Average Price Large"
FROM
	inventory.products
GROUP BY 
	rollup (category_id)
ORDER BY
	category_id