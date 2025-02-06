/*
CREATED BY: KENNEDY U
CREATE DATE: MM/DD/YYYY
DESCRIPTION: Find the standard deviation and variance of a dataset
*/
-- Standard deviation and Variance are ways to describe Distribution of a data set.
SELECT
	gender,
	count(*),
	avg(height_inches),
	min(height_inches),
	max(height_inches),
	stddev_samp(height_inches),
	stddev_pop(height_inches),
	var_samp(height_inches),
	var_pop(height_inches)
FROM
	public.people_heights
GROUP BY
	gender