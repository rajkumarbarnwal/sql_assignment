show databases;
use new1;
select a1.city, amt1/amt2 as ratio1
from(
select city, sum(amount) as amt1
from donor
group by city
)as a1
join (
select city,sum(amount) as amt2
from acceptor
group by city
)as a2 on a1.city=a2.city
order by a1.city;