-- UNIQUE

CREATE TABLE MyTable9 (
id INT UNIQUE,
name VARCHAR(255)
);

INSERT INTO MyTable9
(id, name)
VALUES
(2, 'hello');

SELECT * FROM MyTable9;

INSERT INTO MyTable9
(id, name)
VALUES
(2, 'hello'); -- x

INSERT INTO MyTable9
(id, name)
VALUES
(3, 'hello'); -- x

INSERT INTO MyTable9
(name)
VALUES 
('donald');

