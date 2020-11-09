-- DELIVERABLE 1
SELECT employees.emp_no, 
	employees.first_name, 
	employees.last_name,
	employees.birth_date,
	title.title,
	title.from_date,
	title.to_date
INTO retirement_titles
FROM employees
INNER JOIN title
ON employees.emp_no = title.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY employees.emp_no;
--Part2
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;
--Part3
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

--DELIVERABLE 2
SELECT DISTINCT ON (employees.emp_no) employees.emp_no, 
	employees.first_name, 
	employees.last_name,
	employees.birth_date,
	dept_emp.from_date,
	dept_emp.to_date,
	title.title
--INTO mentorship_eligibilty
INNER JOIN employees
	ON (employees.emp_no = dept_emp.emp_no)
INNER JOIN employees
	ON (employees.emp_no = title.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY employees.to_date;