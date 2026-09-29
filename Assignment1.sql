						---- Assignment ----

-- drop the table if it already exists

DROP TABLE IF EXISTS employees;

-- create the employee table

CREATE TABLE employees (
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	department VARCHAR(50),
	salary DECIMAL (10,2) CHECK (salary > 0),
	joining_date DATE NOT NULL,
	age INT CHECK(age >= 18)
);

SELECT * FROM employees;

-- insert data into employees table

INSERT INTO employees (first_name, last_name, department, salary, joining_date, age)
VALUES 
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);


-- Assignment Questions --

-- 1. Retrieve all employees first_names and their department

SELECT first_name, department FROM employees;


-- 2. Update the salary of all employees in the IT department by increasing 10%

UPDATE employees
SET salary = salary + (salary * 0.1)
WHERE department = 'IT';


-- 3. Delete all employees who are older than 34 yrs

DELETE FROM employees
WHERE age > 34;


-- 4. Add a new column email

ALTER TABLE employees
ADD COLUMN email varchar(100);


-- 5. Rename the department column to dept_name

ALTER TABLE employees
RENAME COLUMN department TO dept_name;


-- 6. Retrieve the names of employees who joined after january 1, 2021

SELECT first_name , last_name, joining_date FROM employees
WHERE joining_date > '2021-01-01';

-- 7. Change the bdatab typeof the salary column to integer

ALTER TABLE employees
ALTER COLUMN salary TYPE INTEGER USING salary::INTEGER;


-- 8. List all employees with their age and salary in descending order of salary

SELECT first_name, last_name, age, salary FROM employees 
ORDER BY salary DESC;

-- 9. Insert a new employee with the following details:	
		--('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30)

INSERT INTO employees (first_name, last_name, dept_name, salary, joining_date, age)
VALUES ('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30);


-- 10. Update age of employee +1 to every employee

UPDATE employees
SET age = age + 1;


SELECT * FROM employees;