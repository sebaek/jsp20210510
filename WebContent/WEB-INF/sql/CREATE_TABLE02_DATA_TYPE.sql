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
CREATE TABLE MyTable5
(
	Col1 CHAR(5),   -- 고정 자리수
    Col2 VARCHAR(5) -- 가변 자리수
);

INSERT INTO MyTable5
(Col1, Col2)
VALUES
('abc', 'abc');

INSERT INTO MyTable5
(Col1, Col2)
VALUES
('abcde', 'abcde');

SELECT * FROM MyTable5;

-- 
SET sql_mode = 'PAD_CHAR_TO_FULL_LENGTH';
SELECT * FROM MyTable5;
-- 'abc  ', 'abc'

SET sql_mode = '';
SELECT * FROM MyTable5;
-- 'abc', 'abc'

-- date, datetime, timestamp
CREATE TABLE MyTable6
(
	Col1 DATE,
    Col2 DATETIME,
    Col3 TIMESTAMP
);
INSERT INTO MyTable6
(Col1, Col2, Col3)
VALUES
('2021-06-02',
 '2021-06-02 11:07:30',
 '2021-06-02 11:07:30');
 SELECT * FROM MyTable6;
 
-- exercise3

CREATE TABLE Persons
 (
  PersonID int,
  LastName varchar(255),
  FirstName varchar(255),
  Address varchar(255),
  City varchar(255) 
);

-- exercise4
DROP TABLE Persons;






