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
LIMIT 0, 5; -- 1page

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 5, 5; -- 2page

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 10, 5; -- 3page

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 15, 5; -- 4page



