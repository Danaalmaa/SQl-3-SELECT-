/**
Question 1
**/
Select * from employees where LastName like "D%";
/**
Question 2
**/

Select * from employees where Tiltle like "%Marketing%";

/**
Question 3
**/
SELECT COUNT(TerritoryID) FROM territories;


/**
Question 4
**/
SELECT COUNT(TerritoryID) FROM territories GROUP BY RegionID;

/**
Question 5
**/
SELECT * from suppliers where country="USA";
/**
Question 6
**/
SELECT AVG(UnitPrice) FROM products GROUP BY ProductID;
/**
Question 7
**/
select Count(ProductID) as Count,AVG(UnitPrice) from products where UnitsInStock=0;
/**
Question 8
**/
select * from employees where Notes  like "%BA%";
/**
Question 9
**/
Select * from orders where OrderID IN (SELECT OrderID FROM `order details` group by Quantity order by Quantity DESC)  limit 10;
/**
Question 10
**/
select employeeterritories.EmployeeID,Count(territories.RegionID) from employeeterritories,territories where employeeterritories.TerritoryID=territories.TerritoryID  group by employeeterritories.EmployeeID;
/**
Question EC1
**/
Select * from orders where OrderID IN (SELECT OrderID FROM `order details` group by (Quantity*UnitPrice) order by (Quantity*UnitPrice) DESC) limit 10;
/**
Question EX2
**/
SELECT DATEDIFF(ShippedDate,OrderDate) AS Time from orders order by OrderID;
