--Number 1
select city 
from agents
where aid in (select aid
	      from Orders
	      where cid = 'c006'
	      )
order by "city" ASC;

--Number 2
select distinct pid
from orders
where cid in (select cid
		from customers
		where city = 'Kyoto'
	     )
order by pid ASC;

--Number 3
select (cid, name)
from customers 
where cid NOT in (select cid 
		  from orders 
		  where aid = 'a01'
		  )
order by cid DESC;

--Number 4
select distinct cid 
from orders
where pid = 'p01'
and cid in (select distinct cid
	    from orders
	    where pid = 'p07'
	    )
order by cid ASC;

--Number 5
select pid
from products
where pid NOT in (select pid 
		from orders 
		where aid = 'a08'
	     )
order by pid DESC;

--Number 6
select (name, discount, city)
from customers
where cid in (select cid 
		from orders 
		where aid in (select aid	
			from agents
			where city in 
			('Tokyo','New York')
		       ) --sub2
	       ) -- sub1
order by city ASC;

--Number 7
select name
from customers
where discount in (select discount
		from customers
		where city in ('Duluth','London')
	      )
order by name ASC;

--Number 8
--Check constraints are used to limit the value range that can be placed in a column.
--On a single column, check constraints allows only certain values. On a table, it can limit the values in certain columns based on values in other columns in the row. 
--If the condition evaluates to false, the record violates the constraint and isn't entered into the table. 
--Constraints are used to filter data to show what management is looking for. It can also provide the user with "Null" - meaning nothing. 
--An example is "P_Id>0" or "P_Id<0". Here, it will only show the values greater or lesser than 0. This can be considered a bad check constraint because it is not specific enough.
--A good example of a check constraint is: AGE INT   NOT NULL CHECK (AGE>= 18). This is a good example because the null provides the user with data even if there is none. 

