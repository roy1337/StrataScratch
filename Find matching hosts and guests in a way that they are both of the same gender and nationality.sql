Find matching hosts and guests pairs in a way that they are both of the same gender and nationality.
Output the host id and the guest id of matched pair.

select distinct * from airbnb_hosts as t1
join airbnb_guests as t2
on t1.gender = t2.gender
and t1.nationality = t2.nationality
