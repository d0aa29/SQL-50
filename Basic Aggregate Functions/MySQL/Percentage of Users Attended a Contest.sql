select r.contest_id , round(( ( (count( DISTINCT r.user_id)/count( DISTINCT u.user_id) ))*100 ),2) as percentage
  from Register r join Users u

group by r.contest_id
order by percentage desc ,contest_id asc
