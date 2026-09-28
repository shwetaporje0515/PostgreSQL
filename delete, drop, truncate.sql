CREATE TABLE employee2(

		employee_id INT PRIMARY KEY,
		name VARCHAR(100) NOT NULL,
		position VARCHAR(50),
		department VARCHAR(50),
		hire_date DATE,
		salary NUMERIC(10,2)
);

SELECT * FROM employee2;

INSERT INTO employee2(employee_id, name, position, department, hire_date, salary)
		VALUES(101, 'Ajit sharma', 'data analyst', 'data science', '2022-05-15', 65000.00),
				(102, 'priya desai', 'software engineer', 'IT', '2021-09-20', 75000.00),
				(103, 'rajesh kumar', 'HR management', 'Human Resource', '2019-03-10', 82000.00),
				(104, 'sneha patel', 'marketing specialist', 'marketing', '2020-11-25', 58000.00),
				(105, 'vikram singh', 'Sales executive', 'sales', '2023-09-12', 62000.00)

DELETE FROM employee2 
WHERE department = 'sales';

ALTER TABLE employee2
DROP COLUMN salary;

DROP TABLE IF EXISTS employee2;

DROP DATABASE IF EXISTS company2;