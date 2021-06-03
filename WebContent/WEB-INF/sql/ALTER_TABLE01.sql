-- ALTER TABLE
CREATE TABLE MyTable16
(
	id INT,
    title VARCHAR(255),
    body VARCHAR(255)
);

-- add column
ALTER TABLE MyTable16
ADD inserted TIMESTAMP;

DESC MyTable16;

-- drop column
ALTER TABLE MyTable16
DROP COLUMN inserted;

