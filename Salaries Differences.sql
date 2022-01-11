Salaries Differences
Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. Output just the absolute difference in salaries.


with max_per_dept as (
select dd.department,max(salary) as msal
from db_employee de
join db_dept dd
on de.department_id = dd.id 
group by 1
)

select distinct
(select msal
from max_per_dept
where department = 'marketing') -
(select msal
from max_per_dept
where department = 'engineering')
from max_per_dept
as solution
