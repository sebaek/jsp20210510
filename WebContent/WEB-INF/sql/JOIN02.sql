USE test;

-- https://joins.spathon.com/

CREATE TABLE Users (
	id INT,
    name VARCHAR(255)
);

CREATE TABLE Likes (
	userId INT,
    `like` VARCHAR(255)
);