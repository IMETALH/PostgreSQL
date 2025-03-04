/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Rank rows with a window FUNCTION
*/

select 
    name, 
    gender, 
    height_inches,
	percent_rank() over (order by height_inches desc),
	case
		when percent_rank() over (order by height_inches desc) < .25 then '1st'
		when percent_rank() over (order by height_inches desc) < .50 then '2nd'
		when percent_rank() over (order by height_inches desc) < .75 then '3rd'
		else '4th'
	end as "quartile rank"
from
    public.people_heights
order by 
    height_inches desc;