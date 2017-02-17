--Number 1
select city
from agents a inner join orders o on a.aid = o.aid
where cid = 'c006'
order by "city" ASC;

--Number 2
select pid 
from orders o inner join customers c on o.cid = c.cid
where c.city = 'Kyoto'
order by pid ASC;

--Number 3
select name
from customers
where cid NOT in (select cid 
		  from orders)
order by name ASC;

--Number 4
select c.name
from customers c left outer join orders o on c.cid = o.cid 
where o.ordNumber is null
;
-- Use an outer join when we want null

--Number 5
select c.name as "Customer Name",
       a.name as "Agent Name"
from orders o inner join agents a on o.aid = a.aid
	      inner join customers c on o.cid = c.cid
where c.city = a.city
limit 1
;

--Number 6
select c.name as "Customer Name",
       a.name as "Agent Name",
       c.city as "City Name"
from customers c inner join agents a on c.city = a.city
;

--Number 7
select name, 
	city
from customers
where city in (select city
		from (select city,
			count(*)
		from products
		group by city
		order by count(*) ASC,
			city
		limit 1
		) sub2
	) 
group by (city, name)
;

