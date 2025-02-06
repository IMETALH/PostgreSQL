/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Evaluate probability with cumulative distribution
*/


select 
    name, 
    gender, 
    height_inches,
	percent_rank() over (order by height_inches desc),
	cume_dist() over (order by height_inches desc)
from 
    public.people_heights
order by 
    height_inches desc;