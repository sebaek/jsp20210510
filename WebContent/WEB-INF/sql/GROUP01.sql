USE test;

SELECT * FROM Products;

-- min
SELECT min(Price) FROM Products;

-- max
SELECT max(Price) FROM Products;

-- count
SELECT count(*) FROM Products;

-- avg
SELECT avg(Price) FROM Products;

-- sum
SELECT sum(Price) FROM Products;

SELECT * FROM Products
ORDER BY Price ;

