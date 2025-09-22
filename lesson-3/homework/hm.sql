1.	Bulk insert refers to the efficient loading of large volumes of data from 
	external files (like CSV or text files) directly into a database table.

2.	csv, xlxs, xml, txt

3.	Create table Products (
		ProductID INT Primary Key,
		ProductName Varchar (50),
		Price decimal (10,2)
	);

4.	Insert Into Products Values
		(1, 'Banana', 25000),
		(2, 'Kiwi', 40000),
		(3, 'Melon', 18000);

5.	Null  means that it can contain no value, and it is not required to have a value,
	Whereas, Not Null do not permit that a column must always contain data.

6.	Alter table Products
	Add Constraint uq_ProductName Unique (ProductName);

7.	--UNIQUE constraint means that all values in a column are different.

8.	Alter table Products
	Add CategoryID INT;

9.	Create table Categories (
		CategoryID INT Primary Key,
		CategoryName varchar (50) Unique
	);
		
		Insert Into Categories values
			(1001, 'Vegetable'),
			(1002, 'Fruit'),
			(1003, 'DeiedFruit')

10.	The purpose of Identity column is that automatically 
		to generate a unique numbers for each new row of data.

11.	Bulk Insert Products
	From 'C:\Users\user\Desktop\MAAB\products.txt'	
	With (
		Fieldterminator = ',',
		Rowterminator = '\n',
		Firstrow = 2
	);

12.	Alter table Products
	Add constraint fk_Products_Categories
	Foreign Key (CategoryID) References Categories (CategoryID);

13.	The Primary Key will not accept NULL values whereas 
		the Unique Key can accept NULL values.
	A table can have only one Primary Key but can have multiple Unique Keys. 

14.	Alter table Products
	Add constraint chk_PricePositive Check (Price > 0)

15.	Alter table Products
	Add Stock Int Not null Default 0;

16.	Select Isnull (Price, 0)
	From Products

17.	The purpose of Foreign key is that it adds a restriction that helps 
		establish and enforce consistent relationships within the data.

18.	Create table Customers (
		CustomerID INT Primary Key,
		FirstName Varchar (50) Not Null,
		LastName Varchar (50) Not Null,
		Age INT Not Null,
		Constraint chk_Customers_Age Check (Age >= 18)
	);

19.	Create table Fruits (
		FruitID INT  Identity (100, 10), 
		FruitName Varchar (50)
	);

20.	Create table OrderDetails (
		OrderID INT Not Null,
		ProductID INT Not Null,
		Quantity INT,
		UnitPrice Decimal (10,2),
		Primary Key (OrderID, ProductID)
	);

21.	The COALESCE and ISNULL functions in SQL are used to handle NULL values
		by providing a replacement or alternative;
	ISNULL is limited to two arguments, whereas COALESCE can handle a variable 
		number of expressions;
	ISNULL returns the data type of the first argument, while COALESCE returns 
		the data type with the highest precedence among its arguments.

22.	Create table Employees (
		EmpID INT Primary Key,
		FirstName Varchar (50),
		LastName Varchar (50),
		Email Varchar (50) Unique
	);

23.	CREATE TABLE parent_table (
		parent_id INT PRIMARY KEY,
		parent_data VARCHAR(255)
	);

	CREATE TABLE child_table (
		child_id INT PRIMARY KEY,
		child_data VARCHAR(255),
		parent_ref_id INT,
		FOREIGN KEY (parent_ref_id)
		REFERENCES parent_table (parent_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
	);
