USE test;
SELECT * FROM Customers;

SELECT COUNT(*) FROM Customers;

SELECT Country, CustomerName
FROM Customers
GROUP BY Country;

SELECT Country, COUNT(*)
FROM Customers
GROUP BY Country;

SELECT Country, COUNT(*) cnt
FROM Customers
GROUP BY Country
ORDER BY cnt DESC;

-- exercise 01
SELECT 
COUNT(CustomerID),
Country
FROM Customers
GROUP BY Country
;

-- exercise 02
SELECT 
count(CustomerID),
Country
FROM Customers
GROUP BY Country
ORDER BY 
count(CustomerID) DESC;
