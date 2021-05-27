-- WHERE : row를 조건으로 필터
SELECT * 
FROM Customers 
WHERE Country="Mexico";

SELECT * 
FROM Customers
WHERE CustomerID = 1;

SELECT * FROM Products
WHERE Price = 18;

SELECT * FROM Products
WHERE Price > 30;

SELECT * FROM Products
WHERE Price < 30;

SELECT * FROM Products
WHERE Price >= 30;

SELECT * FROM Products
WHERE Price <= 30;

SELECT * FROM Products
WHERE Price <> 18;

SELECT * FROM Products
WHERE Price != 18;

SELECT * FROM Products
WHERE Price BETWEEN 53 AND 55;

-- LIKE
SELECT * FROM Customers
WHERE City LIKE 'S%'; -- 대소문자 구분 안함

SELECT * FROM Customers
WHERE City LIKE '%g';

SELECT * FROM Customers
WHERE City LIKE '%z%';

SELECT * FROM Customers
WHERE Country LIKE '%us%';

-- IN
SELECT * FROM Customers
WHERE City IN ('Paris','London');

SELECT * FROM Customers
WHERE City IN ('Paris','London', 'Berlin');




