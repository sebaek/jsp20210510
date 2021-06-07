USE test;

-- 1번 고객(알프레드)의 나라
SELECT Country FROM Customers
WHERE CustomerID = 1;
-- Germany

-- 
SELECT * FROM Customers
WHERE Country = 'Germany';


-- subquery
SELECT * FROM Customers
WHERE Country = (SELECT Country FROM Customers WHERE CustomerID = 1);








