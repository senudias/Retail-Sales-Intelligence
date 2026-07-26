CREATE DATABASE retail_sales;
USE retail_sales;

CREATE TABLE orders(
RowID INT,
OrderID VARCHAR(30),
OrderDate DATE,
 ShipDate DATE,
 ShipMode VARCHAR(100),
 CustomerID VARCHAR(30),
 FirstName VARCHAR(100),
 LastName VARCHAR(100),
 Segment VARCHAR(50),
 Country VARCHAR(50),
 City VARCHAR(50),
 State VARCHAR(50),
 PostalCode VARCHAR(20),
 Region VARCHAR(50),
ProductID VARCHAR(50),
Category VARCHAR(50),
SubCategory VARCHAR(50),
ProductName VARCHAR(255),
Sales DECIMAL(10,2),
Quantity INT,
Discount DECIMAL(5,2),
Profit DECIMAL(10,2)
  );
  
  DROP Table orders;

RENAME TABLE `book 7(sheet1) (1)` TO orders;

  SHOW Tables;

SELECT *
FROM orders
LIMIT 10;

SELECT COUNT(*)
FROM orders;

DESCRIBE orders;

SELECT * FROM orders WHERE FirstName IS NULL;

SELECT * FROM orders WHERE Sales IS NULL;

SELECT COUNT(OrderID) AS Total_Orders FROM orders;

SELECT COUNT(DISTINCT CustomerID) AS Total_Customers FROM orders;

SELECT SUM(Sales) AS Total_Sales FROM orders;

SELECT AVG(Sales) AS Average_Sales FROM orders;

SELECT MAX(Sales) AS Highest_Sale FROM orders;

SELECT Region, SUM(Sales) AS Total_Sales FROM orders GROUP BY Region ORDER BY Total_Sales DESC;

SELECT Category, SUM(Sales) AS Total_Sales FROM orders GROUP BY Category ORDER BY Total_Sales DESC;

SELECT Segment, SUM(Sales) AS Total_Sales FROM orders GROUP BY Segment ORDER BY Total_Sales DESC;

SELECT FirstName, SUM(Sales) AS Total_Spent FROM orders GROUP BY FirstName ORDER BY Total_Spent DESC LIMIT 10;

SELECT ProductName, SUM(Sales) AS Revenue FROM orders GROUP BY ProductName ORDER BY Revenue DESC LIMIT 10;

SELECT Month(OrderDate) AS Month, SUM(Sales) AS Total_Sales FROM orders GROUP BY Month ORDER BY Total_Sales;

SELECT Region, SUM(Profit) AS Total_Profit FROM orders GROUP BY Region ORDER BY Total_Profit DESC;

SELECT Category, SUM(Profit) AS Profit FROM orders GROUP BY Category ORDER BY Profit DESC;

SELECT City, SUM(Sales) AS Total_Sales FROM orders GROUP BY City ORDER BY Total_Sales DESC LIMIT 10;

SELECT FirstName, SUM(Profit) AS Profit FROM orders GROUP BY FirstName HAVING Profit < 0 ORDER BY Profit;

SELECT ProductName, SUM(Quantity) AS Total_Quantity FROM orders GROUP BY ProductName ORDER BY Total_Quantity DESC LIMIT 10;

SELECT SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit, (SUM(Profit) / SUM(Sales)) * 100 AS Profit_Margin FROM orders;