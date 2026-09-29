-- drop the table if already exists
DROP TABLE IF EXISTS user1;


--create the user table if already it not exists
CREATE TABLE IF NOT EXISTS user1(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	age INT,
	city VARCHAR(50)
);

SELECT * FROM user1;

INSERT INTO user1 (username, email, age, city)
VALUES ('rajesh', 'rajesh@gmail.com', 25, 'mumbai'),
       ('priya', 'priya@gmail.com', 30, 'delhi'),
       ('ankit', 'ankit@yahoo.com', 28, 'banglore'),
       ('snehal', 'snehal@gmail.com', 35, 'pune'),
       ('vikram', 'vikram@hotmail.com', 22, 'hyderabad');


SELECT username, city FROM user1;

UPDATE user1 
SET age = 26 
WHERE username = 'rajesh'; 

SELECT * FROM user1;

SELECT * FROM user1 ORDER BY user_id ASC;		-- TO MAKE IN ASCENDING ORDER
--SELECT * FROM user1 ORDER BY username ASC;		

UPDATE user1
SET city = 'chennai'
WHERE age >=30;

UPDATE user1
SET age = 31, city = 'kolkata'
WHERE username = 'priya';

UPDATE user1
SET age = age+1
WHERE email LIKE '%@gmail.com';


---- UPDATE DATA WITH TOOLBAR ----  : the below toolbar can be used to update the data - mostly this is useful for small data 

SELECT * FROM user1 ORDER BY user_id ASC;


---- ALTER COLUMN AND DATATYPE ----

ALTER TABLE user1						---- to chnage the username clm to full_name
RENAME COLUMN username TO full_name;

SELECT * FROM user1 ORDER BY user_id ASC;



ALTER TABLE user1 						---- to chnge the datatype
ALTER COLUMN age TYPE SMALLINT;

SELECT * FROM user1 ORDER BY user_id ASC;



ALTER TABLE user1						---- to add a not null constraint to city
ALTER COLUMN city SET NOT NULL;



ALTER TABLE user1
DROP CONSTRAINT age;

ALTER TABLE user1						---- to check constraint to age column
ADD CONSTRAINT age CHECK(age >= 18);

INSERT INTO user1 (full_name, email, age, city)
VALUES ('vinod', 'vinod@gmail.com', 17, 'mumbai');

SELECT * FROM user1 ORDER BY user_id ASC;



ALTER TABLE user1						---- change the table name
RENAME TO customers;

SELECT * FROM customers ORDER BY user_id ASC;
