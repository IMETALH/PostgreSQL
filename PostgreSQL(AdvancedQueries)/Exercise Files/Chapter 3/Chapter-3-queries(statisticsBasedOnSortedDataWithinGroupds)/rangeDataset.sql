/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Determine the range of values within a dataset
*/

--- Basic STATISTICS operation: find range, max - min
--- There is no range function in PostgreSQL, you just minus max - min

select 
	gender,
	max(height_inches) - min(height_inches) as "height range"
from 
	public.people_heights
group by 
	rollup (gender);