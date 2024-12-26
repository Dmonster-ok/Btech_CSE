--Part A

--1
SELECT * FROM STUDENT_10
WHERE DID = (SELECT DID FROM DEPARTMENT_10 WHERE DName = 'Computer')

--2
SELECT s.Name FROM 
STUDENT_10 s 
WHERE s.Rno IN (SELECT a.Rno FROM ACADEMIC a WHERE a.SPI > 8)

--3
SELECT * FROM STUDENT_10 s
WHERE s.City = 'Rajkot' AND DID = (SELECT DID FROM DEPARTMENT_10 WHERE DName = 'Computer')

--4
SELECT COUNT(s.Rno) FROM STUDENT_10 s
WHERE DID = (SELECT DID FROM DEPARTMENT_10 WHERE DName = 'Electrical')

--5
SELECT Name FROM STUDENT_10 s, ACADEMIC a
WHERE s.Rno = a.Rno AND a.SPI =
(SELECT MAX(a.SPI)
FROM STUDENT_10 s, ACADEMIC a
WHERE s.Rno = a.Rno)

--6
SELECT * FROM STUDENT_10 s
WHERE s.Rno in (SELECT a.Rno FROM ACADEMIC a WHERE a.Bklog > 1)

--7
SELECT Name FROM STUDENT_10 s
WHERE s.Rno = (
	SELECT a.Rno FROM ACADEMIC a WHERE a.SPI =
	(SELECT TOP 1 s.SPI FROM (SELECT TOP 2 a.SPI FROM ACADEMIC a ORDER BY a.SPI desc ) s order by s.SPI)
)

--8
SELECT * FROM STUDENT_10
WHERE DID IN (SELECT d.DID FROM DEPARTMENT_10 d WHERE d.DName IN ('Mechanical','Computer'))

--9
SELECT Name FROM STUDENT_10 s
WHERE s.DID = 
(SELECT d.DID FROM STUDENT_10 s,DEPARTMENT_10 d
WHERE s.DID = d.DID AND s.Rno = 102)

--10
SELECT * FROM STUDENT_10 s
WHERE s.Rno IN (SELECT a.Rno FROM ACADEMIC a WHERE a.SPI > 9)
AND s.DID IN (SELECT DID FROM DEPARTMENT_10 WHERE DName = 'Electrical')


--Part B

--1
SELECT (SELECT c.COM_NAME FROM COMPANY_MASTER c WHERE c.COM_ID = i.PRO_COM) Company,
AVG(i.PRO_PRICE) Price
FROM ITEM_MASTER i
GROUP BY i.PRO_COM

--2
SELECT (SELECT c.COM_NAME FROM COMPANY_MASTER c WHERE c.COM_ID = i.PRO_COM) Company,
AVG(i.PRO_PRICE) Price
FROM ITEM_MASTER i
WHERE i.PRO_PRICE > 350
GROUP BY i.PRO_COM

--3
SELECT MAX(i.PRO_PRICE) Price,
(SELECT c.COM_NAME FROM COMPANY_MASTER c WHERE c.COM_ID = i.PRO_COM) Company
FROM ITEM_MASTER i
GROUP BY i.PRO_COM
