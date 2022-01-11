Top Cool Votes

Find the review_text that received the highest number of  'cool' votes.
Output the business name along with the review text with the highest numbef of 'cool' votes.

select business_name,review_text,max(cool) 
from yelp_reviews
group by business_name,review_text
order by max(cool) desc
limit 2
