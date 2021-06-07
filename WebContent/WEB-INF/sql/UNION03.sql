USE test;

SELECT * FROM Customers;
SELECT * FROM Suppliers;

SELECT Country FROM Customers
UNION
SELECT Country FROM Suppliers
ORDER BY Country;


