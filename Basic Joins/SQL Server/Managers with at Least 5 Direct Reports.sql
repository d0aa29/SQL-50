/* Write your T-SQL query statement below */
select m.name from Employee e join Employee m

on m.id =e.managerId 
group by e.managerId, m.name
having count(e.managerId)>4
