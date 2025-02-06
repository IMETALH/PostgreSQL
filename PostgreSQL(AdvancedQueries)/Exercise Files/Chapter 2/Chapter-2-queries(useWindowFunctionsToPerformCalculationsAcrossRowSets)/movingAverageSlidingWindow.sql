/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Calculate a moving average with a sliding WINDOW 
*/

SELECT
	order_id,
	sum(order_id) over (order by order_id rows between 0 preceding and 2 following) AS "3 Period Leading Sum",
	sum(order_id) over (order by order_id rows between 2 preceding and 0 following) AS "3 Period Trailing Sum",
	avg(order_id) over (order by order_id rows between 1 preceding and 1 following) AS "3 Period Moving Average"
FROM
	sales.orders;
