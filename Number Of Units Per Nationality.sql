Number Of Units Per Nationality

Find the number of apartments per nationality that are owned by people under 30 years old.
Output the nationality along with the number of apartments.
Sort records by the apartments count in descending order.

with num_of_units as (
select t1.host_id,count(*) as units_per_host from airbnb_units t1
where unit_type ='Apartment'
group by t1.host_id)

select distinct t2.nationality, t1.units_per_host from num_of_units t1
join airbnb_hosts t2 
on t1.host_id = t2.host_id
where t2.age < 30
