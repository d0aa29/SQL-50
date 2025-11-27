/* Write your T-SQL query statement below */
select DISTINCT l1.num as ConsecutiveNums 
 from Logs l1 join logs l2 
on L1.id = L2.id - 1 
join Logs l3 
on L1.id = L3.id - 2
where l1.num=l2.num AND l1.num=l3.num
