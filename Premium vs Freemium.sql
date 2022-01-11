-- Premium vs Freemium
--Find the total number of downloads for paying and non-paying users by date. Include only records where non-paying customers have more downloads than paying customers. The output should be sorted by earliest date first and contain 3 columns date, non-paying downloads, paying downloads.
--Tables: ms_user_dimension, ms_acc_dimension, ms_download_facts
--1.ms_user_dimension
--user_idint
--acc_idint
--2.ms_acc_dimension
--acc_idint
--paying_customervarchar
--3.ms_download_facts
--datedatetime
--user_idint
--downloadsint


select * from
(select date, 
sum(case when ma.paying_customer = 'no' then mdd.downloads end)  as non_paying,
sum(case when ma.paying_customer = 'yes' then mdd.downloads end)  as paying          
from ms_user_dimension as ms
join ms_acc_dimension as ma
on ms.acc_id = ma.acc_id
join ms_download_facts mdd
on ms.user_id = mdd.user_id
group by date
) tt
where non_paying > paying
order by date
