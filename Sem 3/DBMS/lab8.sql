--Part A

--1
SELECT s.name,c.cust_name, c.city
FROM customers c inner join salesmen s
ON c.salesman_id = s.salesman_id
WHERE s.city = c.city

--2
SELECT o.ord_no, o.purch_amt, c.cust_name, c.city
FROM orders o inner join customers c
ON o.customer_id = c.customer_id
WHERE o.purch_amt BETWEEN 500 AND 2000

--3
SELECT c.cust_name, c.city, s.name, s.commission
FROM customers c inner join salesmen s
ON c.salesman_id = s.salesman_id

--4
SELECT c.cust_name, c.city, s.name, s.commission
FROM customers c inner join salesmen s
ON c.salesman_id = s.salesman_id
WHERE s.commission > 0.12

--5
SELECT c.cust_name, c.city, s.name, s.city, s.commission
FROM customers c inner join salesmen s
ON c.salesman_id = s.salesman_id
WHERE s.commission > 0.12 AND s.city != c.city

--6
SELECT o.ord_no, o.ord_date, o.purch_amt, c.cust_name,
	c.grade, c.city, s.name, s.city, s.commission
FROM orders o inner join customers c
ON o.customer_id = c.customer_id
inner join salesmen s
ON c.salesman_id = s.salesman_id

--7
SELECT o.ord_no, o.ord_date, o.purch_amt, c.customer_id, c.cust_name, c.city, c.grade, s.salesman_id, s.name, s.city, s.commission
FROM orders o inner join customers c
ON o.customer_id = c.customer_id
inner join salesmen s
ON c.salesman_id = s.salesman_id


--8
SELECT c.cust_name, c.city, s.name, s.city
FROM customers c inner join salesmen s
ON c.salesman_id = s.salesman_id
ORDER BY c.customer_id

--9
SELECT c.cust_name, c.city, s.name, s.city
FROM customers c inner join salesmen s
ON c.salesman_id = s.salesman_id
WHERE c.grade < 300
ORDER BY c.customer_id

--10
SELECT c.cust_name, c.city, o.ord_no, o.ord_date, o.purch_amt, s.salesman_id, s.name, s.commission
FROM orders o inner join customers c
ON o.customer_id = c.customer_id
inner join salesmen s
ON c.salesman_id = s.salesman_id
ORDER BY o.purch_amt, o.ord_date