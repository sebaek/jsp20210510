-- data type
-- number
-- INT, DECIMAL
CREATE TABLE MyTable3
(
 Col1 INT,
 Col2 DECIMAL
);
INSERT INTO MyTable3
(Col1, Col2)
VALUES
(55, 3.14);
SELECT * FROM MyTable3;
DESC MyTable3;

CREATE TABLE MyTable4
(
	Col1 DECIMAL,
    Col2 DECIMAL(10, 2),
    Col3 DECIMAL(3, 1)
);

INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES
(3.14, 3.14, 3.14);
SELECT * FROM MyTable4;

INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES
(333.14, 333.14, 33.1); -- ok

INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES
(333.14, 333.14, 333.1); -- not ok

SELECT * FROM MyTable4;


-- char(String)

-- date, datetime

