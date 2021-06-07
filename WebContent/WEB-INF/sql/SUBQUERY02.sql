USE test;
SELECT * FROM Customers;
SELECT * FROM Orders;

-- 주문한 적 있는 고객들
SELECT CustomerID FROM Orders;

SELECT * FROM Customers WHERE CustomerID IN (90, 81, 34);

SELECT * FROM Customers WHERE CustomerID IN (SELECT CustomerID FROM Orders);

-- 주문 한 적 없는 고객들
SELECT * FROM Customers WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);

DESC Orders;

-- 주문을 처리하는 직원 목록
SELECT * FROM Employees WHERE EmployeeID IN (SELECT EmployeeID FROM Orders);
-- 주문을 처리하지 않는 직원 목록
SELECT * FROM Employees WHERE EmployeeID NOT IN (SELECT EmployeeID FROM Orders);


