SELECT * FROM Customers;

SELECT * FROM Customers
LIMIT 10;

SELECT * FROM Customers
LIMIT 5;

SELECT * FROM Customers
ORDER BY Country
LIMIT 10;

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 10;

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 0, 10; -- 1page

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 10, 10; -- 2page

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 20, 10; -- 3page

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 30, 10; -- 4page



