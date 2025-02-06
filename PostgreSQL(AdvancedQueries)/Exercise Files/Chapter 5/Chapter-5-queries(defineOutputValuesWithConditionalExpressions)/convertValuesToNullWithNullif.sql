/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Convert Values To Null With NULLIF
*/


SELECT 
    nullif('A', 'A');
--------------------------------

SELECT 
    * 
FROM 
    inventory.products;



-- The NULLIF function is used to convert values to NULL.
-- The first argument is the value to be converted to NULL.
-- The second argument is the value to compare against. 
-- That is, if the first argument is equal to the second argument, the first argument is converted to NULL.
SELECT 
    sku, 
    product_name, 
    category_id,
	nullif(size, 32) as "size", -- Here, in the size column, if the value is 32 in any row, the cell value is converted to NULL.
	price
FROM 
    inventory.products;

