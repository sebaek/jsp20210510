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

-- 1번고객(알프레드)와 같은 나라에 있는 공급자(Suppliers)목록
SELECT * FROM Suppliers
WHERE Country = (SELECT Country FROM Customers WHERE CustomerID = 1);









