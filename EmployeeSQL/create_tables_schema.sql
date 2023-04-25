-- Create tables

-- Drop table if exists
DROP TABLE IF EXISTS departments;

-- Create new table
CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

-- Confirm creation of table
SELECT * FROM departments;

------------------------------

-- Drop table if exists
DROP TABLE IF EXISTS titles;

-- Create new table
CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL PRIMARY KEY,
	title VARCHAR(30) NOT NULL
);

-- Confirm creation of table
SELECT * FROM titles;

------------------------------

-- Drop table if exists
DROP TABLE IF EXISTS employees;

-- Create new table
CREATE TABLE employees (
	emp_no INTEGER NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);	

-- Confirm creation of table
SELECT * FROM employees;

------------------------------

-- Drop table if exists
DROP TABLE IF EXISTS dept_emp;

-- Create new table
CREATE TABLE dept_emp (
	dept_emp_id SERIAL PRIMARY KEY,
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Confirm creation of table
SELECT * FROM dept_emp;

------------------------------

-- Drop table if exists
DROP TABLE IF EXISTS dept_manager;

-- Create new table
CREATE TABLE dept_manager (
	manager_id SERIAL PRIMARY KEY,
	dept_no VARCHAR(30) NOT NULL,
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Confirm creation of table
SELECT * FROM dept_manager;

------------------------------

-- Drop table if exists
DROP TABLE IF EXISTS salaries;

-- Create new table
CREATE TABLE salaries (
	salary_id SERIAL PRIMARY KEY,
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Confirm creation of table
SELECT * FROM salaries;