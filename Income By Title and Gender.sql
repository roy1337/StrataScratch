Find the average total compensation based on employee titles and gender. Total compensation is calculated by adding both the salary and bonus of each employee. However, not every employee receives a bonus so disregard employees without bonuses in your calculation. Employee can receive more than one bonus.
Output the employee title, gender (i.e., sex), along with the average total compensation.

with tt as (
select sum(bonus) as bonus,worker_ref_id from sf_bonus
group by 2
)

select se.employee_title,se.sex,avg(tt.bonus + se.salary)
from sf_employee as se join tt
on tt.worker_ref_id = se.id
group by 1,2
