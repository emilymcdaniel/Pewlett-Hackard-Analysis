CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	to_date DATE NOT NULL,
	from_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no)
);

-- Number of employees retiring
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

--List of employees retiring
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

--Output list
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

--Review
SELECT * FROM retirement_info;

