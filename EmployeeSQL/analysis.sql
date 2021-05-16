--1
SELECT employees.emp_no, last_name, first_name, gender, salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;

--2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date>='1986-01-01' AND hire_date<='1986-12-31';

--3
SELECT dm.dept_no, dept_name, dm.emp_no, last_name, first_name
FROM dept_manager AS dm
JOIN departments ON dm.dept_no = departments.dept_no
JOIN employees ON dm.emp_no = employees.emp_no;

--4
SELECT employees.emp_no, last_name, first_name, dept_name
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;

--5
SELECT first_name, last_name, gender
FROM employees
WHERE first_name='Hercules' AND last_name like 'B%';

--6
SELECT employees.emp_no, last_name, first_name, dept_name
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

--7
SELECT employees.emp_no, last_name, first_name, dept_name
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--8
SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name 
ORDER BY count(last_name) DESC;