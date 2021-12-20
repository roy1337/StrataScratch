Marketing Campaign Success [Advanced]
You have a table of in-app purchases by user. Users that make their first in-app purchase are placed in a marketing campaign where they see call-to-actions for more in-app purchases. Find the number of users that made additional in-app purchases due to the success of the marketing campaign.

The marketing campaign doesn't start until one day after the initial in-app purchase so users that make multiple purchases on the same day do not count, nor do we count users that make only the same purchases over time.


 select count(distinct counta.user_id) from (
 select user_id, case when min(created_at) over (Partition By user_id)
 <> min(created_at) over(partition by user_id,product_id) then 1 else 0 end as campaign
 from marketing_campaign
 ) counta
 where campaign = 1
