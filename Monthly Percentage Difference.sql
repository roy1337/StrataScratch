Monthly Percentage Difference
Given a table of purchases by date, calculate the month-over-month percentage change in revenue. The output should include the year-month date (YYYY-MM) and percentage change, rounded to the 2nd decimal point, and sorted from the beginning of the year to the end of the year.
The percentage change column will be populated from the 2nd month forward and can be calculated as ((this months revenue - last months revenue) / last months revenue)*100.


with monthly as (
select to_char(created_at, 'YYYY-MM') as month, 
sum(value) as purchases
from sf_transactions
group by month)

select month,
round(100*(purchases - lag(purchases,1) over (order by month)) / lag(purchases,1) over(order by month),2)
as mon_change
from monthly
