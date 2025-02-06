/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Return values at specific locations within a WINDOW
*/

 
------------------------------------------------------------------------------
-- Run this first: notice how the last_value retrieves the same name, and the 
-- nth_value is only working when we get to the third row? This is because
-- with the order by sort within the over clause function, the over window
-- functin only work with values up to the current row.
------------------------------------------------------------------------------
SELECT
	company,
	first_value(company) over(order by company),
	last_value(company) over(order by company),
	nth_value(company, 3) over(order by company)
FROM
	sales.customers
ORDER BY 
	company


-- Here, we improve it using unbounded preceding and unbounded following to achieve our disired output, i.e,
-- nth_value(company, 3) column will contain company column's third row value
-- last_value column will contain last value of company column's last row value
-- first_value column will contain first value of company column's first row value
SELECT 
	company,
	FIRST_VALUE(company) OVER(ORDER BY company rows between unbounded preceding and unbounded following),
	LAST_VALUE(company) OVER(ORDER BY company rows between unbounded preceding and unbounded following),
	NTH_VALUE(company, 3) OVER(ORDER BY company rows between unbounded preceding and unbounded following)
FROM
	sales.customers
ORDER BY 
	company
----------------------------------------------------------------
--

SELECT
	*
FROM 
	sales.orders
--

----------------------------------------------------------------

SELECT DISTINCT
	customer_id,
	order_date,
	FIRST_VALUE(order_date) OVER(PARTITION BY customer_id ORDER BY order_date rows between unbounded preceding and unbounded following),
	LAST_VALUE(order_date) OVER(PARTITION BY customer_id  ORDER BY order_date rows between unbounded preceding and unbounded following)
FROM
	sales.orders
ORDER BY
	customer_id,
	order_date;















	


