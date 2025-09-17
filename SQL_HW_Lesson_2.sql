Basic-Level Tasks

	1. Create table Employees (EmpID INT, Name VARCHAR(50), Salary DECIMAL(10,2))

	2. Insert into Employees values 
		(1, 'Alex', 2500),
		(2, 'Jacob', 3500),
		(3, 'Daniel', 4500);

	3. Update Employees
	   set Salary = 7000
	   where EmpID = 1

	4. Delete from Employees
	   where EmpID = 2
	
	5. Delete means delete one or more rows of a table
	   TRUNCATE means delete all data from a table
	   DROP means delete tables from the database or delete existing databases completely

	6. Alter table Employees
	   Alter column Name varchar (100)

	7. Alter table Employees
	   Add Department VARCHAR(50)

	8. Alter table Employees
	   Alter column Salary float

	9. Create table Departments (DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50))

	10. Truncate table Employees

Intermediate-Level Tasks

	Create table Departments_ABS 
		(DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50))

	Insert into Departments (DepartmentID, DepartmentName) Values 
		(1, 'Sales'),
		(2, 'HR'),
		(3, 'Finance'),
		(4, 'Engineering'),
		(5, 'Production')

	11. Insert into Departments
		Select * from Departments_ABS
	
	12. Update Employees
		set Department = 'Management'
		where Salary > 5000
	
	13. Truncate table Employees

	14. Alter table Employees
		drop column Department

	15. Exec sp_rename 'Employees', 'StaffMembers'

	16. Drop table Departments

Advanced-Level Tasks

	17. Create table Products (
			ProductID Int Primary Key, 
			ProductName Varchar (50),
			Category Varchar (50),
			Price Decimal (10,2),
			Quantity Int);

		Insert into Products Values 
			(1001, 'Nexia', 'Cedan', 6850, 175),
			(1002, 'Tico', 'Hatchback', 4120, 254),
			(1003, 'Captiva', 'Suv', 13980, 98),
			(1004, 'Matiz', 'Hatchback', 5330, 423)

	18. Alter table Products
		Add constraint ChK_Price check (Price>0)

	19. Alter table Products
		ADD StockQuantity INT Not Null Default 50 

	20. Exec sp_rename 'Products.Category', 'ProductCategory', 'COLUMN'

	21. Create table Products_NEW (
			ProductID Int Primary Key, 
			ProductName Varchar (50),
			ProductCategory Varchar (50),
			Price Decimal (10,2),
			Quantity Int,
			StockQuantity INT Not Null Default 50);

		Insert into Products_NEW Values 
			(1005, 'Gentra', 'Cedan', 9800, 375, 50),
			(1006, 'Lada', 'Hatchback', 6150, 86, 50),
			(1007, 'Tahoe', 'Suv', 65800, 65, 50),
			(1008, 'Leapmotor01', 'Liftback', 22860, 950, 50),
			(1009, 'Malibu', 'Cedan', 32330, 5566, 50)

		Insert into Products
		Select * from Products_NEW

	22. Select * INTO Products_Backup
		From Products

	23.	Exec sp_rename 'Products', 'Inventory'

	24. Alter table Inventory
		Alter column Price float
	
	25. Alter table Inventory
		Add ProductCode Int Identity (1000, 5)

