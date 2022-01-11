Highest Salary In Department
Find the employee with the highest salary per department.
Output the department name, employees first name along with the corresponding salary.


with tt as (
SELECT distinct e1.Department, Max(e1.Salary) as max_Salary
FROM Employee e1 
group by 1
)

select tt.department,ee.first_name, tt.max_salary
from tt join employee ee on tt.department = ee.department
where ee.salary = tt.max_salary
