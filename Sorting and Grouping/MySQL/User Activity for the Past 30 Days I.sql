/*
NOTE: The original problem statement can feel unclear about what exactly 
should be counted, even though the logic is simple.
So here is an explanation in case you feel lost in the description:

The question asks us to return, for each day in the 30-day period ending on 2019-07-27
(meaning we only consider activities between '2019-06-28' and '2019-07-27'),
the number of users who were active on that day.

=> A user is considered active if they performed ANY activity on that date.
=> Each user is counted only once per day, no matter how many activities they performed.
=> But if the same user is active again on another day, they are counted again for that day.
*/

select activity_date as day, count( distinct user_id) as active_users 
from Activity 
where activity_date between '2019-06-28' AND '2019-07-27'
group by activity_date 
