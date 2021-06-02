SELECT * FROM Customers
ORDER BY CustomerID;

DELETE FROM Customers;

DELETE FROM Customers
WHERE CustomerID = 1;

-- exercise 1
SELECT * FROM Customers
WHERE Country = 'Norway';


DELETE FROM
 Customers
WHERE
 Country = 'Norway';
 
 
 -- exercise 2
SELECT * FROM Customers;

DELETE FROM Customers;

SELECT * FROM Employees
ORDER BY EmployeeID;