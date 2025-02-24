--Part A

--1
CREATE FUNCTION printHellow()
RETURNS varchar(50)
AS
BEGIN
	return 'Hello world'
END

SELECT dbo.printHellow()

--2
CREATE FUNCTION addtwo(@a int, @b int)
RETURNS INT
AS
BEGIN
	RETURN @a + @b;
END

SELECT dbo.addtwo(2,4)

--3
CREATE FUNCTION cube(@l int, @b int, @h int)
RETURNS INT
AS 
BEGIN
	RETURN @l*@b*@h
END

SELECT dbo.cube(4,5,4)

--4
CREATE FUNCTION oddEV(@a int)
RETURNS varchar(10)
AS 
BEGIN
	if(@a%2 = 0)
	begin
		return 'even'
	end
	return 'odd'
END

SELECT dbo.oddEV(5)

--5
CREATE FUNCTION personNameB()
RETURNS @val TABLE (Pname VARCHAR (50))
AS
BEGIN
	insert into @val
	SELECT PersonName FROM PERSON WHERE PersonName LIKE 'B%'
	RETURN
END

SELECT * from dbo.personNameB()

--6
CREATE FUNCTION personNameU()
RETURNS @val TABLE (Pname VARCHAR (50))
AS
BEGIN
	insert into @val
	SELECT distinct cust_name FROM customers
	RETURN
END

SELECT * from dbo.personNameU()




--Part B

--1
CREATE FUNCTION compareAB(@a int, @b int)
RETURNS VARCHAR(50)
AS
BEGIN
	DECLARE @ans varchar(20) = CASE
		WHEN @a > @b THEN 'GT'
		WHEN @a < @b THEN 'LT'
		WHEN @a = @b THEN 'EQ'
		ELSE 'INVALID'
	END

	RETURN @ans
END

--2
CREATE FUNCTION print1toN(@n int)
RETURNS @val TABLE (C int)
AS
BEGIN
	DECLARE @c int = 1;
	while (@c <= @n)
	BEGIN 
		INSERT INTO @val SELECT @c
		SET @c = @c + 1
	END
	RETURN
END

SELECT * from dbo.print1toN(20)

--3
CREATE FUNCTION sumOf20()
RETURNS int
AS
BEGIN
	DECLARE @c int = 1,@sum int = 0;
	while (@c <= 20)
	BEGIN 
		IF(@c%2 = 2)
		BEGIN
			SET @sum += @c
		END	
		SET @c+=1
	END
	RETURN @sum
END

SELECT dbo.sumOf20()