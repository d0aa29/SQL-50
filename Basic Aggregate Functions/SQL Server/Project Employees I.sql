/* Write your T-SQL query statement below */
select p.project_id , round(avg(e.experience_years*1.0),2) as average_years
from Project p ,Employee  e
where p.employee_id =e.employee_id 
group by p.project_id 
