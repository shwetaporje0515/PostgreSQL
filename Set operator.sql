		-- SET OPERATORS

DROP TABLE IF EXISTS student_2023;

CREATE TABLE student_2023 (
	student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)
);

INSERT INTO student_2023 (student_id, student_name, course)
VALUES (1, 'Arava Sharma', 'Computer Science'),
	   (2, 'Ishita Verma', 'Mechanical Engineering'),
	   (3, 'Kabir Patel', 'Electronics'),
	   (4, 'Ananya Desai', 'Civil Engineering'),
	   (5, 'Rahul Gupta', 'Computer Science');

SELECT * FROM student_2023;


DROP TABLE IF EXISTS student_2024;

CREATE TABLE student_2024 (
	student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)
);

INSERT INTO student_2024 (student_id, student_name, course)
VALUES (3, 'Kabir Patel', 'Electronics'),			-- same as studentg_2023
	   (4, 'Ananya Desai', 'Civil Engineering'),	-- same as studentg_2023
	   (6, 'Meera Rao', 'Computer Science'),
	   (7, 'Vikram Singh', 'Mathematics'),
	   (8, 'Sanya Kapoor', 'Physics');


SELECT * FROM student_2024;


-- UNION OPERATOR : combine results, remove duplicate

SELECT student_name, course
FROM student_2023 
UNION
SELECT student_name, course
FROM student_2024


-- UNION ALL - combines result, keep duplicate

SELECT student_name, course
FROM student_2023 
UNION ALL
SELECT student_name, course
FROM student_2024


-- INTERSECT - returns common result in both tables

SELECT student_name, course
FROM student_2023 
INTERSECT
SELECT student_name, course
FROM student_2024
