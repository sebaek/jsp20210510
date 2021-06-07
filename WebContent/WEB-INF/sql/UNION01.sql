USE test;

CREATE TABLE Table03
(
	id3 int,
    name VARCHAR(255)
);
CREATE TABLE Table04
(
	id4 INT,
    city VARCHAR(255)
);

INSERT INTO Table03 (id3, name) VALUES (1, 'bts');
INSERT INTO Table03 (id3, name) VALUES (2, 'twice');
INSERT INTO Table03 (id3, name) VALUES (3, 'redvelvet');
select * from Table03;

INSERT into Table04 (id4, city) VALUES (10, 'seoul');
INSERT into Table04 (id4, city) VALUES (20, 'ny');
INSERT into Table04 (id4, city) VALUES (30, 'london');
SELECT * FROM Table04;

-- union
SELECT * FROM Table03
UNION
SELECT * FROM Table04;

-- alias
SELECT id3 id, name nc FROM Table03
UNION
SELECT * FROM Table04;


SELECT id3, name FROM Table03
UNION
SELECT city, id4 FROM Table04;

-- UNION ALL
SELECT * FROM Table03
UNION ALL
SELECT * FROM Table04;

-- x
SELECT * FROM Table03
UNION ALL
SELECT city FROM Table04;





