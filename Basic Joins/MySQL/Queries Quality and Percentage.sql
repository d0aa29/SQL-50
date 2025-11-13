
select query_name , round(sum(rating/position)/count(rating),2) as quality , round( sum(rating<3 )/count(rating)*100 ,2)as poor_query_percentage
from Queries
group by query_name
having query_name is not null
