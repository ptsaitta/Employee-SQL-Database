DROP TABLE IF EXISTS Departments CASCADE;
DROP TABLE IF EXISTS Department_Employees CASCADE;
DROP TABLE IF EXISTS Department_Manager CASCADE;
DROP TABLE IF EXISTS Employees CASCADE;
DROP TABLE IF EXISTS Salaries CASCADE;
DROP TABLE IF EXISTS Titles CASCADE;

CREATE TABLE Titles (
title_id varchar(5),
title VARCHAR(100),
PRIMARY KEY (title_id)
);

CREATE TABLE Employees (
emp_no int,
emp_title_id varchar(5),
birth_date date,
first_name varchar(30),
last_name varchar(30),
sex varchar(1),
hire_date date,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

CREATE TABLE Departments (
dept_name varchar(100),
dept_no varchar(6),
PRIMARY KEY (dept_no)
);

CREATE TABLE Department_Employees (
dept_no varchar(6),
emp_no int,
PRIMARY KEY (dept_no, emp_no),
FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Department_Manager (
dept_no varchar(6),
emp_no int,
PRIMARY KEY (dept_no, emp_no),
FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Salaries (
emp_no int,
salary int,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);