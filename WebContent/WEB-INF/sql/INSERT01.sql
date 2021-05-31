SELECT * FROM Customers
ORDER BY CustomerID DESC;

INSERT INTO Customers
(CustomerID, CustomerName,
 ContactName, Address,
 City, PostalCode, Country)
VALUES
(92, 'Kim', 'Lee', 'Gangnam', 'Seoul', '00000', 'Korea');

INSERT INTO Customers
VALUES
(94, 'Choi', 'Hong', 'Gangnam', 'Seoul', '00000', 'Korea');


INSERT INTO Customers
(CustomerID, CustomerName, ContactName)
VALUES
(95, 'Back', 'Seoul');

INSERT INTO Customers
(CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Trump', 'Donald', 'NY', 'NY', '000', 'US');

--  테이블 설명 보기
DESC Customers;
DESC Employees;

SELECT * FROM Employees
ORDER BY EmployeeID DESC;



