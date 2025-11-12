/*# Write your MySQL query statement below*/
select  DISTINCT customer_id, count( *) AS count_no_trans
from Visits 
where visit_id not in (select visit_id from Transactions )
GROUP BY customer_id;
