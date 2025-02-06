/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Rank rows with a window FUNCTION
*/


-- ranking with window functions
select 
    name, 
    height_inches, 
    gender,
	rank() over (partition by gender order by height_inches desc),
	dense_rank() over (partition by gender order by height_inches desc)
from 
    public.people_heights
order by 
    gender, 
    height_inches desc;