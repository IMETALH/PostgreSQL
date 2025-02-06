/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Evaluate columns with Boolean aggregates:
we can use grouping with boolean columns to get some statistical
insight into the data.
*/

SELECT
	*
FROM 
	sales.customers;

SELECT
	newsletter,
	count(*)
FROM
	sales.customers
GROUP BY 
	newsletter;

SELECT
	state,
	count(*),
	bool_and(newsletter),
	bool_or(newsletter)
FROM
	sales.customers
GROUP BY 
	state;
