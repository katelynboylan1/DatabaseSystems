--Katelyn Boylan
--Lab 3

-- Number 1
SELECT ordNumber, totalUSD
from Orders;

--Number 2
SELECT name, city
from Agents
where name='Smith'; 

--Number 3
SELECT pid, name, quantity, priceUSD
from Products
where quantity > 200100;

--Number 4
SELECT name, city
from Customers
where city = 'Duluth';

--Number 5
SELECT name, city
from Agents
where city <> 'New York'
and city <> 'Duluth';

--Number 6
SELECT priceUSD, name 
from products
where priceUSD >= 1.00
and city <> 'Duluth'
and city <> 'Dallas';

--Number 7
SELECT *
from Orders
where month = 'Feb' OR month = 'Apr';

--Number 8
SELECT *
from Orders
where month = 'Feb' 
AND totalUSD >= 600;

--Number 9
SELECT *
from Orders
where cid = 'c005';



