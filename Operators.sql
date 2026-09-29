		-- OPERATORS IN SQL

SELECT * FROM employee2;

SELECT first_name , salary , 
		(salary  * 0.10) AS bonus
FROM employee2;

		-- ARITHMATIC OPERATOR

-- CALCULATING NEW SALARY

SELECT first_name, last_name, salary,
	(salary * 12) AS annual_salary,
	(salary * 0.05) AS increment_salary,
	(salary + salary * 0.05) AS new_salary,
	(salary *1.05) AS new_salary2
FROM employee2;


		-- COMPARISION OPERATOR

SELECT * FROM employee2;

-- age macthes to 30
SELECT * FROM employee2 
WHERE age =30;

-- matches all excluding 30
SELECT first_name, age FROM employee2
WHERE age != 30;  			-- or can use : <>

-- salary greater than 50k
SELECT first_name, salary FROM employee2
WHERE salary > 50000;


		-- LOGICAL OPERATOR

SELECT * FROM employee2;

-- salary greater than 50k and age greater than equal to 40
-- using AND operator
SELECT * FROM employee2 
WHERE age >= 40 AND salary >= 50000;


-- using OR operator
SELECT * FROM employee2 
WHERE age >= 60 OR salary >= 90000;

-- using NOT
SELECT * FROM employee2 
WHERE NOT department = 'IT';


		-- BETWIN, LIKE and IN OPERATOR 


-- 1. retrieve employees whose salary is between 40000 and 60000  use BETWEEN OPERATOR

SELECT first_name, last_name, salary
FROM employee2
WHERE salary BETWEEN 40000 AND 60000;


-- 2. Find employees whose email address end with gmail.com - use LIKE OPERATOR

SELECT first_name, last_name, email
FROM employee2
WHERE email LIKE '%@gmail.com';


SELECT first_name FROM employee2
WHERE first_name LIKE '%a%';



-- 3. retrieve employees who belong to either the 'FINANCE' or 'MARKETING' department - use IN OPERATOR

SELECT first_name, last_name, department
FROM employee2
WHERE department IN ('Finance', 'Marketing');



		-- OTHER OPERATOR : IS NULL, ORDER BY, LIMIT, DISTINCT

-- 1. find employees where email column is NULL ( if applicable)

SELECT first_name, last_name, email
FROM employee2
WHERE email IS NULL;


-- 2. List employees sorted by salary in DESCENDING order

SELECT first_name, last_name, salary
FROM employee2
ORDER BY salary DESC;


-- 3. Retrieve the top 5 highest paid employees

SELECT first_name, last_name, salary
FROM employee2
ORDER BY salary DESC
LIMIT 5;


-- 4. Retrieve a list of unique departments

SELECT DISTINCT department 
FROM employee2;


