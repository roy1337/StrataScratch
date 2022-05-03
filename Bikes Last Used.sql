Find the last time each bike was in use. Output both the bike number and the date-timestamp of the bike's last use (i.e., the date-time the bike was returned).
Order the results by bikes that were most recently used.

select bike_number, max(end_time)
from dc_bikeshare_q1_2012
group by 1
order by 2 desc
