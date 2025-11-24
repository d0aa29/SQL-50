/* Write your T-SQL query statement below */
select FORMAT(trans_date , 'yyyy-MM') AS month, 
       country , 
       count(state)as trans_count ,
       sum(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) as approved_count ,sum(amount)as trans_total_amount ,
       sum(CASE WHEN state = 'approved' THEN Amount ELSE 0 END) as approved_total_amount 
from Transactions 
group by country,
        FORMAT(trans_date , 'yyyy-MM')
