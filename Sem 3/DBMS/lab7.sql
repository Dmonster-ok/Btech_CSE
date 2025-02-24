--Part A

--1
SELECT p.PersonName,d.DepartmentName,d.DepartmentCode FROM PERSON p INNER JOIN DEPARTMENT d ON p.DepartmentID = d.DepartmentID

--2
SELECT p.PersonName
FROM PERSON p INNER JOIN DEPARTMENT d 
ON p.DepartmentID = d.DepartmentID 
WHERE d.Location = 'C-Block'

--3
SELECT p.PersonName, p.PersonName, p.Salary, d.DepartmentName
FROM PERSON p INNER JOIN DEPARTMENT d 
ON p.DepartmentID = d.DepartmentID
WHERE p.City = 'Jamnagar'

--4
SELECT p.PersonName, p.Salary, d.DepartmentName
FROM PERSON p INNER JOIN DEPARTMENT d 
ON p.DepartmentID = d.DepartmentID
WHERE p.City != 'Rajkot'

--5
SELECT p.PersonName
FROM PERSON p INNER JOIN DEPARTMENT d 
ON p.DepartmentID = d.DepartmentID
WHERE D.DepartmentName = 'Civil' AND P.JoiningDate > '2001-8-1'

--6
SELECT p.*
FROM PERSON p INNER JOIN DEPARTMENT d 
ON p.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Computer'

--7
SELECT p.PersonName, d.DepartmentName
FROM PERSON p INNER JOIN DEPARTMENT d 
ON p.DepartmentID = d.DepartmentID
WHERE DATEDIFF(DAY,JoiningDate,GETDATE()) > 365

--8
SELECT p.DepartmentID, d.DepartmentName,COUNT(p.PersonID) [Toatal Persons] 
FROM PERSON p INNER JOIN DEPARTMENT d 
ON p.DepartmentID = d.DepartmentID
GROUP BY p.DepartmentID,d.DepartmentName

--9
SELECT p.DepartmentID,d.DepartmentName, MAX(p.Salary)[Max salary], MIN(p.Salary)[Min salary]
FROM PERSON p INNER JOIN DEPARTMENT d 
ON p.DepartmentID = d.DepartmentID
GROUP BY p.DepartmentID,d.DepartmentName

--10
SELECT p.City ,MAX(p.Salary)[Max salary], MIN(p.Salary)[Min salary]
FROM PERSON p
GROUP BY p.City

--11
SELECT p.City, AVG(p.Salary) [Avg salary]
FROM PERSON p
WHERE p.City = 'Ahmedabad'
GROUP BY p.City

--12
SELECT p.PersonName + ' lives in ' + p.City + ' and works in ' + d.DepartmentName + ' Department.'
FROM PERSON p INNER JOIN DEPARTMENT d 
ON p.DepartmentID = d.DepartmentID

--13
SELECT p.PersonName + ' earns ' + CAST(p.Salary AS varchar) + ' from ' + d.DepartmentName + ' department monthly.'
FROM PERSON p INNER JOIN DEPARTMENT d 
ON p.DepartmentID = d.DepartmentID

--14
SELECT p.City, d.DepartmentName ,SUM(p.Salary)[Total salary], AVG(p.Salary)[Average salary]
FROM PERSON p INNER JOIN DEPARTMENT d
ON p.DepartmentID = d.DepartmentID
GROUP BY p.City, d.DepartmentName

--15
SELECT p.PersonName FROM PERSON p
WHERE p.DepartmentID is null