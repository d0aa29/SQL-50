/* Write your T-SQL query statement below */
select distinct p.product_id ,
 COALESCE(
        (select top 1 new_price 
        from Products p2 
        where p.product_id=p2.product_id
        and p2.change_date<= '2019-08-16'
        order by change_date DESC)
          ,10) as price 
from Products p 
