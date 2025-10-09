1.	Select ProductName as Name
	From Products;

2.	Select * From Customers as Client;

3.	Select ProductName from Products
	Union
	Select ProductName from Products_Discounted;

4.	Select * from Products
	Intersect
	Select * from Products_Discounted;

5.	Select distinct FirstName, Country From Customers;


6.	Select ProductName, Price,
		Case 
			When Price > 1000 then 'High'
			Else 'Low'
		End as PriceCategory
	From Products;

7.	Select *, IIF(StockQuantity > 100, 'Yes', 'No') as YesNoStock
	From Products_Discounted;

8.	Select ProductName from Products
	Union
	Select ProductName from Products_Discounted;

9.	Select * from Products
	Except
	Select * from Products_Discounted;

10.	Select *, IIF(Price > 1000, 'Expensive', 'Affordable') as ConditionalPrice
	From Products;

11.	Select * 
	From Employees
	Where Age > 25 or Salary > 60000;

12.	Update Employees
	Set Salary = Salary*1.1
	Where DepartmentName = 'HR' or EmployeeID = 5;

13.	Select *,
		Case
			When SaleAmount > 500 then 'Top Tier'
			When SaleAmount Between 200 And 500 then 'Mid Tier'
			Else 'Low Tier'
		End As SalesTier
	From Sales;

14.	Select CustomerID from Orders
	Except
	Select CustomerID from Sales;

15.	Select CustomerID, Quantity, 
		Case
			When Quantity = 1 then '3%'
			When Quantity > 1 And Quantity <=3 then '5%'
			Else '7%'
		End As DiscountPercentage
	From Orders;
