Reviews of Categories
Find the top business categories based on the total number of reviews. Output the category along with the total number of reviews. Order by total reviews in descending order.


select unnest(string_to_array(categories, ';')) as category, sum(review_count)
from yelp_business
group by category
order by sum(review_count) desc

