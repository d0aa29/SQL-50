select Round(
  COALESCE( sum(CASE WHEN d.order_date=d.customer_pref_delivery_date  THEN 1 ELSE 0 END)*100.0 /count(d.order_date)
    ,0)
  ,2)as immediate_percentage 
from Delivery d
join( select customer_id ,min(order_date) as first_date from Delivery 
group by customer_id )
f ON d.customer_id = f.customer_id
   AND d.order_date = f.first_date
