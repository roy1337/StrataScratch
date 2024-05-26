Find the email activity rank for each user. Email activity rank is defined by the total number of emails sent. The user with the highest number of emails sent will have a rank of 1, and so on. Output the user, total emails, and their activity rank. Order records by the total emails in descending order. Sort users with the same number of emails in alphabetical order.
In your rankings, return a unique value (i.e., a unique rank) even if multiple users have the same number of emails. For tie breaker use alphabetical order of the user usernames.


Table - google_gmail_emails
id:
int
from_user:
varchar
to_user:
varchar
day:
int


 
with user_rank as (
select from_user as user,count(from_user) as rank from google_gmail_emails
group by from_user
order by rank desc
)

select
user, rank,
row_number() over (order by rank desc)
from user_rank
