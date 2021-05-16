CREATE TABLE departments(
	dept_no varchar(10) PRIMARY KEY,
	dept_name varchar(255)
);

CREATE TABLE employees(
	emp_no int PRIMARY KEY,
	birth_date date,
	first_name varchar(30),
	last_name varchar(30),
	gender varchar(1),
	hire_date date
);

CREATE TABLE dept_emp(
	emp_no int,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no varchar(10),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	from_date date,
	to_date date,
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager(
	dept_no varchar(10),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no int PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	from_date date,
	to_date date
);

CREATE TABLE salaries(
	emp_no int PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary int,
	from_date date,
	to_date date
);

CREATE TABLE titles(
	emp_no int,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	title varchar(255),
	from_date date,
	to_date date,
	PRIMARY KEY (emp_no,title,from_date)
);
