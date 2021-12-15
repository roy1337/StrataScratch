Popularity Percentage
Find the popularity percentage for each user on Facebook. The popularity percentage is defined as the total number of friends the user has divided by the total number of users on the platform, then converted into a percentage by multiplying by 100.
Output each user along with their popularity percentage. Order records in ascending order by user id.
The 'user1' and 'user2' column are pairs of friends.

with tbl as (
select user1 from facebook_friends
union all
select user2 from facebook_friends
)

select user1,count(user1)/(select count(distinct user1) from tbl)::float *100 as perc from tbl
group by user1
order by user1
