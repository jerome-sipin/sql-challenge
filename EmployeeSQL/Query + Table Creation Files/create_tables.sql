-- Create tables based on created ERD

CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id),
	birth_date VARCHAR(30),
	first_name VARCHAR(30) NOT NULL,
	last_Name VARCHAR(30) NOT NULL,
	sex VARCHAR(10),
	hire_date VARCHAR(30)
);

CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT
);

CREATE TABLE titles(
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(30)
);

CREATE TABLE departments(
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(30)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(10),
	emp_no INT,
	PRIMARY KEY(dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emps(
	emp_no INT,
	dept_no VARCHAR(10),
	PRIMARY KEY(emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);