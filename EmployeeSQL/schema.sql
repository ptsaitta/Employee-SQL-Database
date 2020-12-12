DROP TABLE IF EXISTS Departments CASCADE;
DROP TABLE IF EXISTS Department_Employees CASCADE;
DROP TABLE IF EXISTS Department_Manager CASCADE;
DROP TABLE IF EXISTS Employees CASCADE;
DROP TABLE IF EXISTS Salaries CASCADE;
DROP TABLE IF EXISTS Titles CASCADE;

CREATE TABLE Titles (
title_id varchar(5) NOT NULL,
title VARCHAR(100) NOT NULL,
PRIMARY KEY (title_id)
);

CREATE TABLE Employees (
emp_no int NOT NULL,
emp_title_id varchar(5) NOT NULL,
birth_date date NOT NULL,
first_name varchar(30) NOT NULL,
last_name varchar(30) NOT NULL,
sex varchar(1) NOT NULL,
hire_date date NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

CREATE TABLE Departments (
dept_name varchar(100) NOT NULL,
dept_no varchar(6) NOT NULL,
PRIMARY KEY (dept_no)
);

CREATE TABLE Department_Employees (
dept_no varchar(6) NOT NULL,
emp_no int NOT NULL,
PRIMARY KEY (dept_no, emp_no),
FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Department_Manager (
dept_no varchar(6) NOT NULL,
emp_no int NOT NULL,
PRIMARY KEY (dept_no, emp_no),
FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Salaries (
emp_no int NOT NULL,
salary int NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);