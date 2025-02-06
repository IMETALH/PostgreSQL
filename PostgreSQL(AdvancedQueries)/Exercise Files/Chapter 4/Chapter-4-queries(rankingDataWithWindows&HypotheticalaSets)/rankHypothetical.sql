/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Rank rows with a window FUNCTION
*/


-- using rank as a hypothetical grouping set aggregate
select 
    name, 
    height_inches
from 
    public.people_heights
order by 
    height_inches desc;

---------------
-- Here we use rank() function alongside within clause to determine hypothetical position or value of a data

select 
    gender,
    rank(70) within group (order by height_inches desc)
from 
    public.people_heights
group by 
    rollup (gender);