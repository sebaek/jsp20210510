USE test;
SELECT * FROM Customers;
SELECT * FROM Orders;

-- join
SELECT * 
FROM Customers JOIN Orders
  ON Customers.CustomerID = Orders.CustomerID;
  
SELECT o.OrderID, c.CustomerName 
FROM Customers c JOIN Orders o
  ON c.CustomerID = o.CustomerID;
  
-- 
SELECT *
FROM Customers c LEFT JOIN Orders o
  ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;  

SELECT c.CustomerName
FROM Customers c LEFT JOIN Orders o
  ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;  
  
  
  
  