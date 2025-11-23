select s.user_id ,
  Round( 
  COALESCE(
    SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END) * 1.0 / NULLIF(COUNT(c.action),0)
  ,0)
  ,2) as confirmation_rate 
from Signups s 
  left join Confirmations c
on c.user_id =s.user_id 
group by s.user_id
