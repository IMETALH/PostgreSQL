/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Output Row Numbers With Query Results
*/

SELECT 
    * 
FROM 
    inventory.products;
---------------------------------------


-- Row numbers with query results
SELECT 
	row_number() OVER (order by sku)
    sku, 
    product_name, 
    size
FROM 
    inventory.products;



-- Row numbers with query results partitioned by product_name and ordered by sku
SELECT 
    sku, 
    product_name, 
    size,
	row_number() OVER (partition by product_name order by sku)
FROM 
    inventory.products;