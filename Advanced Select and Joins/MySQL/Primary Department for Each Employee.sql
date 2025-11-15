select employee_id , department_id from Employee
WHERE primary_flag='Y'
 OR  employee_id in 
 (SELECT employee_id FROM Employee
    Group by employee_id
    having count(employee_id)=1)
