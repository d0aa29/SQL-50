
select round(
  sum(case when  a.event_date=DATE_ADD(f.first_date, INTERVAL 1 DAY) THEN 1 ELSE 0 END )*1.0/count(distinct a.player_id ),2) 
  as fraction 
from Activity a
join( 
  select player_id , min(event_date) as first_date 
  from Activity 
  group by player_id 
  ) f
on a.player_id =f.player_id
