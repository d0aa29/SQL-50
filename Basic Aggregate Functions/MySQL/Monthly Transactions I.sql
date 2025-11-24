select DATE_FORMAT(trans_date , '%Y-%m') AS month,
      country ,
      count(state)as trans_count ,
      sum(state ='approved') as approved_count ,
      sum(amount)as trans_total_amount ,
      sum(CASE WHEN state = 'approved' THEN Amount ELSE 0 END) as approved_total_amount 
from Transactions 
group by country , 
        EXTRACT(MONTH FROM trans_date),
        EXTRACT(YEAR FROM trans_date)
