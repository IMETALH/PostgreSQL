/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Define WHERE criteria with a series.
*/

-- Select all orders that were placed on the 15th, 20th, 25th, and 30th of March 2021. skipping every 5 days.
SELECT
	*
FROM
	sales.orders
WHERE
	order_date IN(
		SELECT generate_series('2021-03-15'::timestamp, '2021-03-31'::timestamp, '5 days')
)
ORDER BY 
	order_id;
	