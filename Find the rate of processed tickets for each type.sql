Find the rate of processed tickets for each type

select 
type, (sum(case when processed='True' then 1 else 0 end):: NUMERIC/
count(type)) as Rate
from facebook_complaints fc
group by type
