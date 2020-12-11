DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Department_Employees;
DROP TABLE IF EXISTS Department_Manager;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Salaries;
DROP TABLE IF EXISTS Titles;



CREATE TABLE Departments (
dept_name varchar(100),
dept_no varchar(6),
PRIMARY KEY (dept_no)
);

CREATE TABLE Department_Employees (
dept_no varchar(6),
emp_no int,
PRIMARY KEY (dept_no, emp_no)
CONSTRAINT fk_dept_no
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
CONSTRAINT fk_emp_no
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Department_Manager (
dept_no varchar(6),
emp_no int,
PRIMARY KEY (dept_no, emp_no),
CONSTRAINT fk_dept_no
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Employees (
emp_no int,
emp_title_id varchar(5),
birth_date date,
first_name varchar(30),
last_name varchar(30),
sex varchar(1),
hire_date date,
PRIMARY KEY (emp_no)
);

CREATE TABLE Salaries (
emp_no int,
salary int,
PRIMARY KEY (emp_no),
CONSTRAINT fk_emp_no
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Titles (
title_id varchar(5),
title string,
PRIMARY KEY (title_id),
CONSTRAINT fk_title_id
	FOREIGN KEY (title_id) REFERENCES Employees(emp_title_id)
);