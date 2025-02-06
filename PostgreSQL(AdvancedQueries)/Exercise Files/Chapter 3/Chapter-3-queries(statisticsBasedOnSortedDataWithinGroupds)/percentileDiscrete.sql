/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Calculate the median value of a dataset
*/
 -- For datasets with an even number of data points, a continous median will sort the data,
 -- then average the two middle values.

SELECT
	gender,
	percentile_disc(0.5) within group (order by height_inches) as "discrete median",
	percentile_cont(0.5) within group (order by height_inches) as "continous medium"
FROM
	public.people_heights
GROUP BY 
	rollup (gender)