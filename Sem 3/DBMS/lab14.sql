--Part A

--1
DECLARE Product_Cursor CURSOR
	FOR SELECT * FROM Products

	DECLARE @Prod_id int, @Prod_name varchar(250), @Prod_price DECIMAL(10,2);

OPEN Product_Cursor
	FETCH NEXT FROM Product_Cursor INTO @Prod_id,@Prod_name,@Prod_price

	WHILE @@FETCH_STATUS = 0
	BEGIN
		PRINT CAST(@Prod_id AS VARCHAR(10)) + ' ' + @Prod_name + ' ' + CAST(@Prod_price AS VARCHAR(10))
		FETCH NEXT FROM Product_Cursor INTO @Prod_id,@Prod_name,@Prod_price
	END
CLOSE Product_Cursor
DEALLOCATE Product_Cursor



--2
DECLARE Product_Cursor_Fetch CURSOR
	FOR SELECT Product_id,Product_Name FROM Products

	DECLARE @Prod_id int, @Prod_name varchar(250)

OPEN  Product_Cursor_Fetch
	FETCH NEXT FROM  Product_Cursor_Fetch INTO @Prod_id,@Prod_name

	WHILE @@FETCH_STATUS = 0
	BEGIN
		PRINT CAST(@Prod_id AS VARCHAR(10)) + '_' + @Prod_name
		FETCH NEXT FROM  Product_Cursor_Fetch INTO @Prod_id,@Prod_name
	END
CLOSE  Product_Cursor_Fetch
DEALLOCATE  Product_Cursor_Fetch

--3
DECLARE Product_CursorDelete CURSOR
	FOR SELECT Product_id FROM Products

	DECLARE @Prod_id int

OPEN  Product_CursorDelete
	FETCH NEXT FROM  Product_CursorDelete INTO @Prod_id

	WHILE @@FETCH_STATUS = 0
	BEGIN
		DELETE Products WHERE Product_id = @Prod_id
		FETCH NEXT FROM  Product_CursorDelete INTO @Prod_id
	END
CLOSE  Product_CursorDelete
DEALLOCATE  Product_CursorDelete

SELECT * FROM Products



--Part B

--1

DECLARE Product_CursorUpdate CURSOR
	FOR SELECT Product_id,Price FROM Products

	DECLARE @Prod_id int, @Prod_price DECIMAL(10,2);

OPEN Product_CursorUpdate
	FETCH NEXT FROM Product_CursorUpdate INTO @Prod_id, @Prod_price

	WHILE @@FETCH_STATUS = 0
	BEGIN
		UPDATE Products SET Price = @Prod_price + @Prod_price/10 WHERE Product_id = @Prod_id
		FETCH NEXT FROM Product_CursorUpdate INTO @Prod_id,@Prod_price
	END
CLOSE Product_CursorUpdate
DEALLOCATE Product_CursorUpdate

SELECT * FROM Products


--Part C
DECLARE NewProduct_CursorInsert CURSOR
	FOR NewProducts