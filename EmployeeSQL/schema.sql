CREATE TABLE Departments (
dept_name varchar(100),
dept_no PK varchar(6)
);

CREATE TABLE Department_Employees (
dept_no PK varchar(6) FK >- Departments.dept_no,
emp_no PK int FK >- Employees.emp_no
);

CREATE TABLE Department_Manager (
dept_no PK varchar(6) FK >- Departments.dept_no,
emp_no PK int
);

CREATE TABLE Employees (
emp_no PK int,
emp_title_id varchar(5),
birth_date date,
first_name varchar(30),
last_name varchar(30),
sex varchar(1),
hire_date date
);

CREATE TABLE Salaries (
emp_no PK int FK >- Employees.emp_no,
salary int
);

CREATE TABLE Titles (
title_id PK varchar(5) FK >- Employees.emp_title_id,
title string
);