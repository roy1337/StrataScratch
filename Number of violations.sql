Number of violations
Youre given a dataset of health inspections. Count the number of violation in an inspection in 'Roxanne Cafe' for each year. If an inspection resulted in a violation, there will be a value in the 'violation_id' column. Output the number of violations by year in ascending order.

select count(*),extract(year from inspection_date) 
from sf_restaurant_health_violations
where violation_id is not null 
and business_name = 'Roxanne Cafe'
group by extract(year from inspection_date) 
