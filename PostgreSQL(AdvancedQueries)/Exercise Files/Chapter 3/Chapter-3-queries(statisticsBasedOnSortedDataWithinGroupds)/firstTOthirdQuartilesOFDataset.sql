/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Calculate the first and third quartiles of a dataset
*/

select
	percentile_cont(.25) within group (order by height_inches) as "1st quartile",
	percentile_cont(.50) within group (order by height_inches) as "2nd quartile",
	percentile_cont(.75) within group (order by height_inches) as "3rd quartile"
from 
	public.people_heights;

-- WARNING: the ntile() function only creates even groups,
--          not statistical quartiles
-- the NTIL() function only creates groups with an equal number of rows. It does not evaluate tied values
select 
	name, 
	height_inches,
	ntile(4) over (order by height_inches)
from 
	public.people_heights
order by 
	height_inches;