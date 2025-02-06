/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Moving Rows Within A Result With LEAD and LAG.
*/

-- LEAD and LAG are window functions that allow you to access data from a subsequent row or a previous row in the result set.
-- The ABS function is used to get the absolute value of the difference between the current row and the previous row.

SELECT 
    order_id,
	customer_id,
	ABS(LAG(order_date, 1) over(partition by customer_id order by order_id) - order_date) AS "Time Between Previous Order",
	LAG(order_date, 1) over(partition by customer_id order by order_id) AS "Previous Order Date",
	order_date,
	LEAD(order_date, 1) over(partition by customer_id order by order_id) AS "Next Order Date",
	LEAD(order_date, 1) over(partition by customer_id order by order_id) - order_date AS "Time Between Next Order"
FROM
	sales.orders
ORDER BY 
	customer_id,
	order_date