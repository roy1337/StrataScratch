Acceptance Rate By Date
What is the overall friend acceptance rate by date? Your output should have the rate of acceptances by the date the request was sent. Order by the earliest date to latest.

Assume that each friend request starts by a user sending (i.e., user_id_sender) a friend request to another user (i.e., user_id_receiver) that's logged in the table with action = 'sent'. If the request is accepted, the table logs action = 'accepted'. If the request is not accepted, no record of action = 'accepted' is logged.




with sent as (
select date as date_sent,user_id_sender, user_id_receiver from fb_friend_requests
where action = 'sent'

),

accepted as (
select fr.date as date,user_id_sender, user_id_receiver 
from fb_friend_requests fr
where fr.action = 'accepted'

)

select date_sent, (count(accepted.user_id_receiver)*1.00 / count(sent.user_id_sender))
from sent left join accepted
on sent.user_id_sender = accepted.user_id_sender
and sent.user_id_receiver = accepted.user_id_receiver
group by 1
