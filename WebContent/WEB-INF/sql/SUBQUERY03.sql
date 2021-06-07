USE test;

SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);
  
SELECT ProductID
FROM OrderDetails
WHERE Quantity = 10;

SELECT * FROM OrderDetails;

-- ALL
SELECT ProductName
FROM Products
WHERE ProductID = ALL
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);



