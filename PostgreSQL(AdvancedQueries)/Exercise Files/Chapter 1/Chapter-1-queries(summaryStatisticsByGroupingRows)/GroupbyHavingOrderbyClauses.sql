/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Use a group by, having and order by clauses to aggregate data rows
*/
-- Having clause is used to filter groups/Group By clause
SELECT 
	size AS "Product Size", 
	count(*) AS "Number of Products"

FROM 
	inventory.products

GROUP BY 
	size

HAVING 
	COUNT(*) > 10
	
ORDER BY
	size DESC;
	


	