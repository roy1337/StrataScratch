Highest Energy Consumption
Find the date with the highest total energy consumption from the Facebook data centers. Output the date along with the total energy consumption across all data centers.


with cons as(
select *
from fb_eu_energy
union all
select *
from fb_asia_energy
union all
select *
from fb_na_energy) 

,partition as (
select date, 
sum(consumption) over (partition by date) as dd
from cons
group by date,consumption
order by date
)

select date,max(dd) as Total
from partition
group by date
order by total desc
limit 2


