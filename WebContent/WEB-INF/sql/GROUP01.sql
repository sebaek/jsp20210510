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

-- int?
CREATE TABLE Test1 (
	col1 INT,
    col2 DECIMAL(10, 2),
    col3 VARCHAR(255)
);

INSERT INTO Test1 (col1, col2, col3) VALUES (1, 3.14, '3.14');
INSERT INTO Test1 (col1, col2, col3) VALUES (1, 3.14, '삼쩜일사');

SELECT * FROM Test1;

SELECT avg(col1) FROM Test1;
SELECT avg(col2) FROM Test1;
SELECT avg(col3) FROM Test1;


-- exercise01
SELECT 
MIN(Price) minPrice
FROM Products;

-- exercise02
SELECT 
max(Price) AS maxPrice
FROM Products;

-- exercise03
SELECT * FROM Products ORDER BY Price;
SELECT COUNT(*) FROM Products WHERE Price = 18;

-- exercise04
SELECT AVG(Price) FROM Products;

-- exercise05
SELECT SUM(Price) FROM Products;







