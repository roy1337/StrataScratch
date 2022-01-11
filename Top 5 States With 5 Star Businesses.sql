Top 5 States With 5 Star Businesses
Find the top 5 states with the most 5 star businesses. Output the state name along with the number of 5-star businesses and order records by the number of 5-star businesses in descending order. In case there are ties in the number of businesses, return all the unique states. If two states have the same result, sort them in alphabetical order.


with m5s as (
select state,count(business_id) as counted
from yelp_business yb
where stars = 5
group by state
)


select state,counted from m5s
order by counted desc, state
limit 6
