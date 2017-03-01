--Lab 6: Interesting and Painful Queries

--Number 1
--Answer should have Dallas or Newark
SELECT name, city
FROM customers
WHERE city = (SELECT city
	      FROM products
	      GROUP BY city -- Sum by city
	      ORDER BY count (city) DESC
	      limit 1	     
	      )     
ORDER BY customers.name DESC
;

--Number 2
--Should return Trapper & Eraser
SELECT name
FROM products
WHERE priceUSD >= (SELECT avg (priceUSD)
		   FROM products
		   )
ORDER BY name DESC
;

--Number 3
--Answer should show corresponding Customer Name, Pid, and Total USD
SELECT c.name as CustomerName, 
       o.pid, 
       SUM(totalUSD) AS Total 
FROM orders o,customers c
WHERE c.cid = o.cid
GROUP BY o.pid, c.name 
ORDER BY total ASC;


--Number 4
--All customer names and total ordered
SELECT name, coalesce(total,0.0) 
FROM customers c
LEFT OUTER JOIN (SELECT cid, SUM(totalUSD) AS total 
		 FROM orders 
		 GROUP BY cid
		 ) sub1
ON (sub1.cid = c.cid)
ORDER BY name ASC;

--Number 5
--Answer should be Tiptop, Brush, & Jones
SELECT customers.name AS CustomerName, 
       products.name AS ProductName,
       agents.name AS AgentName
FROM customers, agents, orders, products
WHERE orders.cid=customers.cid
	AND orders.pid=products.pid
	AND orders.aid=agents.aid
	AND agents.city= 'Newark'
;

--Number 6
--Answer should include ordNumber 1021 and 1026
SELECT orders.ordNumber, orders.month, orders.cid, orders.aid, orders.pid, orders.qty, orders.totalUSD,
	(orders.qty * products.priceUSD) - ((orders.qty * products.priceUSD)*(customers.discount/100.)) as CalculatedTotal
FROM customers, orders, products
WHERE orders.cid=customers.cid
	AND orders.pid=products.pid
	AND (orders.totalUSD - ((orders.qty * products.priceUSD) - ((orders.qty * products.priceUSD)*(customers.discount/100.)))) > 0
;

--Number 7
--A. Left Outer Join: returns all rows to the left of the table with matching rows in the right table.
--Example shows all orders with corresponding products
--In this case, not every product may be shown if it was not ordered.
SELECT * 
FROM orders 
LEFT OUTER JOIN products ON orders.pid = products.pid

--Product 8 is shown in this case (Changed From)
SELECT * 
FROM products
LEFT OUTER JOIN orders ON products.pid = orders.pid

--B. Right Outer Join: returns all rows to the right of the table with matching rows in the left table.
--Product 8 is shown in this case
SELECT * 
FROM orders 
RIGHT OUTER JOIN products ON orders.pid = products.pid

--Product 8 is not shown in this case
SELECT * 
FROM products
RIGHT OUTER JOIN orders ON orders.pid = products.pid
	      
