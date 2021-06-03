-- DEFAULT

CREATE TABLE MyTable13
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    body VARCHAR(255) NOT NULL,
    inserted TIMESTAMP
);

INSERT INTO MyTable13
(title, body, inserted)
VALUES
('title1', 'body1', NOW());

SELECT * FROM MyTable13;

CREATE TABLE MyTable14
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    body VARCHAR(255) NOT NULL,
    inserted TIMESTAMP DEFAULT NOW()
);

INSERT INTO MyTable14
(title, body)
VALUES
('title1', 'body1');

SELECT * FROM MyTable14;

CREATE TABLE MyTable15
(
	col1 INT DEFAULT 10,
    col2 VARCHAR(255) DEFAULT 'hello'
);
INSERT INTO MyTable15
(col1)
VALUES
(30);

INSERT INTO MyTable15
(col2)
VALUES
('hi');

SELECT * FROM MyTable15;








