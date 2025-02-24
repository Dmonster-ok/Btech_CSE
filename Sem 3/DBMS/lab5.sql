--Part A

--1
SELECT SUM(purch_amt) [Total Purchase Amount] FROM orders

--2
SELECT Avg(purch_amt) [Average Purchase Amount] FROM orders

--3
SELECT COUNT(DISTINCT salesman_id) FROM orders

--4
SELECT COUNT(DISTINCT customer_id) FROM orders

--5
SELECT COUNT(customer_id) FROM customers
WHERE grade > 1

--6
SELECT MAX(purch_amt) [Maximum Purchase Amount] FROM orders

--7
SELECT MIN(purch_amt) [Minimum Purchase Amount] FROM orders

--8
SELECT city,MAX(grade) [Max grade] FROM customers
GROUP BY city

--9
SELECT customer_id,MAX(purch_amt) [Max purchase] FROM orders
GROUP BY customer_id

--10
SELECT ord_date,MAX(purch_amt) [Max purchase] FROM orders
GROUP BY customer_id,ord_date


--Part B

--1
SELECT salesman_id,MAX(purch_amt) [Highest sale] FROM orders
WHERE ord_date = '2012-08-17'
GROUP BY salesman_id

--2
SELECT customer_id,
ord_date,
MAX(purch_amt) [Highest purchase] FROM orders
GROUP BY customer_id,ord_date
HAVING MAX(purch_amt) > 2000
ORDER BY MAX(purch_amt) DESC

--3
SELECT customer_id,
ord_date,
MAX(purch_amt) [Highest purchase] FROM orders
GROUP BY customer_id,ord_date
HAVING MAX(purch_amt) BETWEEN 2000 AND 6000

--4
SELECT customer_id,
ord_date,
MAX(purch_amt) [Highest purchase] FROM orders
GROUP BY customer_id,ord_date
HAVING MAX(purch_amt) IN (2000,3000,5760,6000)

--5
SELECT customer_id, ord_date,
MAX(purch_amt) [Highest purchase] FROM orders
WHERE customer_id BETWEEN 3002 AND 3007
GROUP BY customer_id,ord_date
ORDER BY customer_id

--6
SELECT customer_id, ord_date,
MAX(purch_amt) [Highest purchase] FROM orders
WHERE customer_id BETWEEN 3002 AND 3007
GROUP BY customer_id,ord_date
HAVING MAX(purch_amt) > 1000
ORDER BY MAX(purch_amt)

--7
SELECT salesman_id, ord_date,
MAX(purch_amt) [Highest purchase] FROM orders
WHERE salesman_id BETWEEN 5003 AND 5008
GROUP BY salesman_id,ord_date

--8
SELECT COUNT(ord_no) [orders on 2012-08-17] FROM orders
WHERE ord_date = '2012-08-17'

--9
SELECT city,COUNT(salesman_id) [Sales People] FROM salesmen
GROUP BY city

--10
SELECT salesman_id,ord_date,COUNT(ord_no) FROM orders
GROUP BY salesman_id,ord_date

--Part C

--1
SELECT AVG(DISTINCT purch_amt) [average product price] FROM orders

--2
SELECT COUNT(DISTINCT ord_no) [Products] FROM orders
WHERE purch_amt >= 350

