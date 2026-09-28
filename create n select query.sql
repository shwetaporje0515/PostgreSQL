CREATE TABLE employee(

		employee_id SERIAL PRIMARY KEY,
		name VARCHAR(100) NOT NULL,
		position VARCHAR(50),
		department VARCHAR(50),
		hire_date DATE,
		salary NUMERIC(10,2)
);

SELECT * FROM employee;

INSERT INTO employee(name, position, department, hire_date, salary)
		VALUES('Ajit sharma', 'data analyst', 'data science', '2022-05-15', 65000.00),
				('priya desai', 'software engineer', 'IT', '2021-09-20', 75000.00),
				('rajesh kumar', 'HR management', 'Human Resource', '2019-03-10', 82000.00),
				('sneha patel', 'marketing specialist', 'marketing', '2020-11-25', 58000.00),
				('vikram singh', 'Sales executive', 'sales', '2023-09-12', 62000.00)