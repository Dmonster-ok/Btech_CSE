--Part 9

--Part A
--1
SELECT v.Name 
FROM CITY c inner join VILLAGE v
ON v.CityID = c.CityID
WHERE c.Name = 'Rajkot'

--2
SELECT c.Name, c.Pincode, v.Name
FROM CITY c inner join VILLAGE v
ON v.CityID = c.CityID

--3
SELECT c.Name
FROM CITY c inner join VILLAGE v
ON v.CityID = c.CityID
GROUP BY c.Name
HAVING COUNT(v.VID) > 1

--4
SELECT c.Name
FROM CITY c left join VILLAGE v
ON v.CityID = c.CityID
WHERE v.VID is null

--5
SELECT c.Name, COUNT(v.VID) [Number of villages]
FROM CITY c left join VILLAGE v
ON v.CityID = c.CityID
GROUP BY c.Name



--6
SELECT COUNT(c.CityID) [Cities having more than one village]
FROM CITY c
WHERE c.CityID IN (SELECT c.CityID
FROM CITY c inner join VILLAGE v
ON v.CityID = c.CityID
GROUP BY c.CityID
HAVING COUNT(v.VID) > 1)

--STUDENT
CREATE TABLE STUDENTS(
	Rno INT PRIMARY KEY,
	Name VARCHAR(50) NOT NULL,
	Branch VARCHAR(50) DEFAULT 'General',
	SPI DECIMAL(4,2) CHECK (SPI >= 0 AND SPI <= 10),
	Bklog INT CHECK (Bklog >= 0)
)

INSERT INTO STUDENTS VALUES (106,'Mahesh',DEFAULT, 4.5,3)


UPDATE STUDENTS SET SPI = 12 WHERE Name = 'Raju'
UPDATE STUDENTS SET Bklog = -1 WHERE Name = 'Neha'