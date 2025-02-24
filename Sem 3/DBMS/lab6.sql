--Part A

--1
SELECT
	STUDENT_6.Rno
   ,Name
   ,Branch
   ,SPI
FROM STUDENT_6, RESULT_6

--2
SELECT s.Rno,s.Name,s.Branch,r.SPI
FROM STUDENT_6 s INNER JOIN RESULT_6 r ON s.Rno = r.Rno

--3
SELECT s.Rno,s.Name,s.Branch,r.SPI
FROM STUDENT_6 s INNER JOIN RESULT_6 r ON s.Rno = r.Rno
WHERE s.Branch = 'CE'

--4
SELECT s.Rno,s.Name,s.Branch,r.SPI
FROM STUDENT_6 s INNER JOIN RESULT_6 r ON s.Rno = r.Rno
WHERE s.Branch != 'EC'

--5
SELECT s.Branch,AVG(r.SPI) [Avg Branch]
FROM STUDENT_6 s INNER JOIN RESULT_6 r ON s.Rno = r.Rno
GROUP BY s.Branch 

--6
SELECT s.Branch,AVG(r.SPI) [Avg Branch]
FROM STUDENT_6 s INNER JOIN RESULT_6 r ON s.Rno = r.Rno
GROUP BY s.Branch 
ORDER BY [Avg Branch]

--7
SELECT s.Branch,AVG(r.SPI) [Avg Branch]
FROM STUDENT_6 s INNER JOIN RESULT_6 r ON s.Rno = r.Rno
WHERE s.Branch IN ('CE','ME')
GROUP BY s.Branch 

--8
SELECT * FROM STUDENT_6 s LEFT JOIN RESULT_6 r ON s.Rno = r.Rno

--9
SELECT * FROM STUDENT_6 s RIGHT JOIN RESULT_6 r ON s.Rno = r.Rno

--10
SELECT * FROM STUDENT_6 s FULL JOIN RESULT_6 r ON s.Rno = r.Rno

--11
SELECT e.Name [Employee] ,e1.Name [Manager]
FROM EMPLOYEE_6 e INNER JOIN EMPLOYEE_6 e1
ON e.ManagerNo = e1.EmployeeNo


--Part B

--1
SELECT p.PersonName, d.DepartmentName, d.DepartmentCode
FROM PERSON p INNER JOIN DEPARTMENT d ON p.DepartmentID = d.DepartmentID

--2
SELECT 
	d.DepartmentName, 
	MIN(p.Salary) [Min Salary], 
	MAX(p.Salary) [Max Salary]
FROM PERSON p INNER JOIN DEPARTMENT d ON p.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName

--3
SELECT 
	d.DepartmentName, 
	SUM(p.Salary) [Total Salary] 
FROM PERSON p INNER JOIN DEPARTMENT d ON p.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName
HAVING SUM(p.Salary) > 100000

--4
SELECT 
	p.PersonName, p.Salary, d.DepartmentName
FROM PERSON p INNER JOIN DEPARTMENT d ON p.DepartmentID = d.DepartmentID
WHERE p.City = 'Jamnagar'

--5
SELECT *
FROM PERSON p
WHERE p.DepartmentID IS NULL

--6
SELECT 
	d.DepartmentName, 
	COUNT(p.PersonID) [Persons]
FROM PERSON p INNER JOIN DEPARTMENT d ON p.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName

--7
SELECT 
	AVG(p.Salary) [Avg salary]
FROM PERSON p
WHERE p.City = 'Ahmedabad'
GROUP BY p.City

--8
SELECT 
	CONCAT(p.PersonName,' earns ', p.Salary, ' from department ',  
	d.DepartmentName, ' monthly.') [Output]
FROM PERSON p INNER JOIN DEPARTMENT d ON p.DepartmentID = d.DepartmentID

--9
SELECT 
	d.DepartmentName
FROM PERSON p FULL JOIN DEPARTMENT d ON p.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName
HAVING COUNT(p.PersonID) = 0

--10
SELECT 
	p.City,d.DepartmentName,SUM(p.Salary)[Total salary], AVG(p.Salary)[Avg salary],MAX(p.Salary)[Max salary]
FROM PERSON p INNER JOIN DEPARTMENT d ON p.DepartmentID = d.DepartmentID
GROUP BY p.City,d.DepartmentName

--Part C

--1
SELECT DISTINCT City FROM PERSON

--2
SELECT 
	d.DepartmentName
FROM PERSON p FULL JOIN DEPARTMENT d ON p.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName
HAVING COUNT(p.PersonID) > 2

--3
SELECT CONCAT(SUBSTRING(PersonName,1,3),SUBSTRING(City,LEN(City)-2,LEN(City))) FROM PERSON

--4
UPDATE PERSON SET Salary=Salary+(Salary *0.1) WHERE DepartmentID = 2
SELECT * FROM PERSON

--5
SELECT PersonName FROM PERSON
WHERE  DATEDIFF(DAY,JoiningDate,GETDATE()) > 365
