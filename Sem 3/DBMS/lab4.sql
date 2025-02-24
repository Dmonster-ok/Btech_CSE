--Part A

--1
SELECT MAX(Salary)[Maximum],MIN(Salary)[Minimum],SUM(Salary)[Total_Sal],AVG(Salary)[Average_Sal] FROM EMPLOYEE

--2
SELECT COUNT(EID) FROM EMPLOYEE

--3

SELECT MAX(Salary) FROM EMPLOYEE WHERE Department = 'IT'

--4
SELECT COUNT(DISTINCT City) FROM EMPLOYEE

--5
SELECT  City,COUNT(EID) FROM EMPLOYEE
GROUP BY City

--6
SELECT  City,COUNT(EID) FROM EMPLOYEE
GROUP BY City
HAVING COUNT(EID) > 1

--7
SELECT Department,SUM(Salary) FROM EMPLOYEE
GROUP BY Department

--8
SELECT AVG(Salary) FROM EMPLOYEE
GROUP BY Department

--9
SELECT MIN(Salary) FROM EMPLOYEE
WHERE City = 'Ahmedabad'
GROUP BY City

--10
SELECT Department FROM EMPLOYEE WHERE City = 'Rajkot'
GROUP BY Department
HAVING SUM(Salary) > 50000

--11
SELECT COUNT(EID) FROM EMPLOYEE WHERE City = 'Rajkot'

--12
SELECT MAX(Salary)- MIN(Salary) [DIFFERENCE] FROM EMPLOYEE

--13
SELECT COUNT(EID) FROM EMPLOYEE WHERE JoiningDate > '1991-01-01'

--14
SELECT Department,SUM(Salary) FROM EMPLOYEE
GROUP BY Department
HAVING SUM(Salary) > 35000
ORDER BY SUM(Salary)

--15
SELECT Department FROM EMPLOYEE 
GROUP BY Department
HAVING COUNT(EID) > 2

--Part B

--1
SELECT Company,SUM(Revenue) FROM COMPANY
GROUP BY Company

--2
SELECT Production_year, COUNT(Title) [Games], 
AVG(Production_cost) [Prod cost] ,
AVG(Revenue) [Avg Revenue]
FROM COMPANY
GROUP BY Production_year

--3
SELECT c.Type,COUNT(c.Title) [Games] FROM COMPANY c
WHERE c.Revenue - c.Production_cost > 0
GROUP BY c.Type

--4
SELECT Type, Title, Revenue, Production_year FROM COMPANY
WHERE Production_year > 2010 AND System IN ('PS2','PS3')
ORDER BY Revenue DESC

--5
SELECT Company, 
(Revenue-Production_cost) [gross_profit_sum] 
FROM COMPANY
GROUP BY Production_year,Company,Production_cost,Revenue
ORDER BY gross_profit_sum DESC

--6
SELECT Company,Production_year, 
(Revenue-Production_cost) [gross_profit_sum] 
FROM COMPANY
GROUP BY Production_year,Company,Production_cost,Revenue
ORDER BY Company,Production_year

--7
SELECT Company,
COUNT(Title) [number_of_games],
AVG(Production_cost) [avg_cos] FROM COMPANY
GROUP BY Company
HAVING COUNT(Title) > 1


