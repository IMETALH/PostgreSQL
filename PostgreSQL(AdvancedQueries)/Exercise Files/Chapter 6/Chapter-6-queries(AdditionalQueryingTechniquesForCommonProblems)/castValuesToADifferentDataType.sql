/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Cast Values To A Different Data Type
*/


-- Cast a date to a text data type

SELECT 
    order_id,
	order_date::text, -- :: is the cast operator
	customer_id
FROM 
    sales.orders;