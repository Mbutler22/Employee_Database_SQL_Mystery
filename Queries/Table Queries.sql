CREATE TABLE Departments(
dept_no varchar(50) not null,
dept_name varchar(50) not null,
UNIQUE (dept_name),
PRIMARY KEY (dept_no));

CREATE TABLE employees(
emp_no INT NOT NULL,
emp_title_id varchar(100),
birth_date varchar(100) NOT NULL,
first_name varchar(100) NOT NULL,
last_name varchar(100) NOT NULL,
sex varchar(100) NOT NULL,
hire_date varchar(100) NOT NULL,
UNIQUE(emp_title_id),
PRIMARY KEY (emp_no));

CREATE TABLE dept_emp(
emp_no INT not null,
dept_no varchar(50) not null,
PRIMARY KEY (emp_no, dept_no),
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no));

CREATE TABLE dept_manager(
dept_no VARCHAR(50) NOT NULL,
emp_no INT NOT NULL,
PRIMARY KEY (dept_no, emp_no),
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES Departments (dept_no));

	
CREATE TABLE salaries(
emp_no INT NOT NULL,
salary INT NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_no) REFERENCES employees (emp_no));

	
CREATE TABLE titles(
title_id VARCHAR(100) NOT NULL,
title VARCHAR(100) NOT NULL,
PRIMARY KEY (title_id),
FOREIGN KEY (title_id) REFERENCES employees (emp_title));