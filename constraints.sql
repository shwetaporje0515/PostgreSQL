DROP TABLE IF EXISTS users;

-- CREATING TABLE --

CREATE TABLE users(
	user_id INT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE,
	age INTEGER CHECK (age >= 18),
	reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- INSERTING DATA INTO TABLE

INSERT INTO users (user_id, name, email, age)
VALUES (1, 'john', 'john.doe@ex.com', 25);

-- INSERTING DATA INTO TABLE 2

INSERT INTO users (user_id, name, email, age)
VALUES (2, 'john', 'john1.doe@example.com', 26);


SELECT * FROM users;