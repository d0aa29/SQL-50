/* Write your T-SQL query statement below */

select round(
  sum(case when a.event_date=DATEADD(day,1,f.first_date) THEN 1 ELSE 0 END )*1.0/count(distinct a.player_id )
  ,2) as fraction 
from Activity a
join(
  select player_id , min(event_date) as first_date 
  from Activity 
  group by player_id 
  ) f
on a.player_id =f.player_id
