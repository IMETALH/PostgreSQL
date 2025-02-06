/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Find the most frequent value within a dataset with MODE
*/


-- The mode function in this query returns only one value 66.17 as the mode, however, it doesn't really indicate if other members also appeared at
-- the same determinant freequency, we can know this by running the query below.
select
	mode() within group (order by height_inches)
from 
	public.people_heights;



-- Here we can see that 2 other heights occured 3 times, thus similar to 66.17's frequency
-- These are things to watch out for when using mode function in postgreSQL query
SELECT
	height_inches, 
	count(*)
from 
	public.people_heights
group by 
	height_inches
order by 
	count(*) desc;