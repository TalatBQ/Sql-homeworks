1.	Select Top 5 * from Employees;

2.	Select  distinct Category
	from Products;

3.	Select * from Products
	Where Price > 100
	Order by Price;

4.	Select * from Customers
	Where FirstName like 'A%';

5.	Select * from Products
	Order by Price;

6.	Select * from Employees
	Where Salary >= 60000 and DepartmentName = 'HR'
	Order by Salary;

7.	Select *, Isnull(Email, 'noemail@example.com') As Email
	From Employees;

8.	Select * from Products
	Where Price between 50 and 100
	Order by Price;

9.	Select distinct Category, ProductName
	From Products;

10.	Select distinct Category, ProductName
	From Products
	Order by ProductName desc;

11.	SELECT top 10 * from Products
	Order by Price Desc;

12.	Select *, coalesce (FirstName, LastName) As FirstName_LastName
	From Employees;

13.	Select distinct Category, Price
	From Products;

14.	Select * from Employees
	Where Age Between 30 and 40 or DepartmentName = 'Marketing';

15.	Select * from Employees
	Order by Salary Desc
	Offset 10 rows fetch next 10 rows only;

16.	Select * from Products
	Where Price <= 1000 and StockQuantity > 50
	Order by StockQuantity;

17.	Select * from Products
	Where ProductName like '%e%';

18.	Select * from Employees
	Where DepartmentName in ('HR', 'IT', 'Finance');

19.	Select * from Customers
	Order by City asc, PostalCode desc;

20.	Select top (5) ProductName, SaleAmount
	From Sales s
	Left join Products p on p.ProductID = s.ProductID
	Order by SaleAmount Desc;

21.	Select CONCAT(FirstName,' ', LastName) as FullName
	From Employees;

22.	Select distinct Category, ProductName, Price
	From Products
	Where Price > 50;

23.	Select ProductName, Price
	From Products
	Where Price < (Select avg(Price) From Products)* 0.1;

24.	Select * From Employees
	Where Age < 30 and DepartmentName in ('HR', 'IT');

25.	Select * from Customers
	Where Email Like '%@gmail.com';

26.	Select * From Employees
	Where salary > All (
		select salary
		from Employees
		Where DepartmentName = 'Finance'
	);
		--Since there is not the 'Sales' Department in the 'DeparmentName' column
		--of the Employees table, it is applied 'Finance' in the 'DeparmentName'.

27.	SELECT * FROM Orders
	WHERE OrderDate BETWEEN DateAdd (Day, -180, (SELECT MAX(OrderDate) FROM Orders))
					AND (SELECT MAX(OrderDate) FROM Orders)
	Order by OrderDate;	
