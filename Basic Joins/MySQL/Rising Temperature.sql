SELECT w.id 
FROM Weather w, Weather r
WHERE w.recordDate = DATE_ADD(r.recordDate, INTERVAL 1 DAY) 
  AND w.temperature > r.temperature;
