select id, movie, description, round(rating,2) as rating
from cinema
where id%2<>0 and description not in('boring')
order by rating desc
